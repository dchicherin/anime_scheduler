import 'package:anime_scheduler/features/schedule_list/provider/schedule_status.dart';
import 'package:anime_scheduler/features/schedule_list/repository/schedule_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../model/schedule_item.dart';

part 'schedule_bloc.freezed.dart';

@freezed
class ScheduleEvent with _$ScheduleEvent {
  const factory ScheduleEvent.getSchedule() = ScheduleGet;
}

@freezed
class ScheduleState with _$ScheduleState {
  const factory ScheduleState({
    required ScheduleStatus status,
    required String errorText,
    required List<ScheduleItem> scheduleList,
  }) = _ScheduleState;
}

typedef _Event = ScheduleEvent;
typedef _State = ScheduleState;
typedef _EventHandler = EventHandler<_Event, _State>;
typedef _Emitter = Emitter<_State>;

const _initialState = ScheduleState(
  status: ScheduleStatusNone(),
  errorText: "",
  scheduleList: [],
);

@injectable
class ScheduleBloc extends Bloc<_Event, _State> {
  ScheduleBloc({
    required ScheduleRepository repository,
  })  : _repository = repository,
        super(_initialState) {
    on<_Event>(_handler);
  }

  final ScheduleRepository _repository;

  _EventHandler get _handler => (event, emit) => event.map(
        getSchedule: (ScheduleGet value) => _getSchedule(value, emit),
      );
  Future<void> _getSchedule(ScheduleGet event, _Emitter emit) async {
    //Получение данных по сети, в случае ошибки меняет статус, при ответе сохраняет данные
    emit(
      state.copyWith(
        errorText: '',
        status: const ScheduleStatusLoading(),
      ),
    );
    final result = await _repository.getSchedule();
    await result.fold(
      (e) async {
        emit(
          state.copyWith(
            status: const ScheduleStatusFailure(),
            errorText: e,
          ),
        );
      },
      (data) async {
        List<ScheduleItem> resList = [];
        for (final item in data.data) {
          resList.add(
            ScheduleItem(
              status: item.status,
              title: item.title,
              broadcastTime: item.broadcast.string,
              mainGenre:
                  item.genres.isNotEmpty ? item.genres.first.name : 'Unknown',
              synopsis: item.synopsis ?? '',
              imageURL: item.images.jpg.image_url,
              popularity: item.popularity,
              score: item.score,
            ),
          );
        }
        emit(
          state.copyWith(
            errorText: '',
            status: const ScheduleStatusNone(),
            scheduleList: resList,
          ),
        );
      },
    );
  }
}
