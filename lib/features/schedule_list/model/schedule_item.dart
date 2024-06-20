import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_item.freezed.dart';

@freezed
class ScheduleItem with _$ScheduleItem {
  const factory ScheduleItem({
    required String status,
    required String title,
    required String broadcastTime,
    required String mainGenre,
    required String synopsis,
    required String imageURL,
    required double score,
    required int popularity,
  }) = _ScheduleItem;
}
