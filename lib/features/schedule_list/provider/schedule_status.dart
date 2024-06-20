import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_status.freezed.dart';

@freezed
class ScheduleStatus with _$ScheduleStatus {
  const factory ScheduleStatus.none() = ScheduleStatusNone;
  const factory ScheduleStatus.loading() = ScheduleStatusLoading;
  const factory ScheduleStatus.failure() = ScheduleStatusFailure;
}
