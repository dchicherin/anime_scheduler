import 'package:anime_scheduler/features/schedule_list/model/schedule_item.dart';
import 'package:anime_scheduler/features/schedule_list/provider/schedule_bloc.dart';
import 'package:anime_scheduler/features/schedule_list/provider/schedule_status.dart';
import 'package:anime_scheduler/features/schedule_list/widgets/schedule_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../ui_utils/ui_constatns.dart';

//Тело списка, в зависимости от статуса показывает спиннер, сам лист или текст ошибки
class ScheduleListBody extends StatefulWidget {
  const ScheduleListBody({super.key});

  @override
  State<StatefulWidget> createState() => _ScheduleListBodyState();
}

class _ScheduleListBodyState extends State<ScheduleListBody> {
  @override
  void initState() {
    context.read<ScheduleBloc>().add(const ScheduleEvent.getSchedule());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<ScheduleItem> items = context.watch<ScheduleBloc>().state.scheduleList;
    ScheduleStatus status = context.watch<ScheduleBloc>().state.status;
    String errorText = context.watch<ScheduleBloc>().state.errorText;
    switch (status) {
      case ScheduleStatusNone():
        return SliverList.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return ScheduleCard(item: items[index]);
          },
        );
      case ScheduleStatusFailure():
        return SliverToBoxAdapter(
          child: Padding(
            padding: kStandardPaddingH,
            child: SizedBox(
              width: double.infinity,
              child: Center(
                  child: Text(
                errorText,
                style: Theme.of(context).textTheme.labelLarge,
              )),
            ),
          ),
        );
      case ScheduleStatusLoading():
        return const SliverToBoxAdapter(
          child: SizedBox(
            width: double.infinity,
            height: 200,
            child: Center(
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            ),
          ),
        );
      default:
        return const SliverToBoxAdapter(
          child: Text('Error'),
        );
    }
  }
}
