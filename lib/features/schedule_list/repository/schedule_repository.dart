import 'package:anime_scheduler/features/schedule_list/api/schedule_api.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class ScheduleRepository {
  ScheduleRepository({required ScheduleApi apiClient}) : _apiClient = apiClient;

  final ScheduleApi _apiClient;

  Future<Either<String, ScheduleListNet>> getSchedule() async {
    try {
      final res = await _apiClient.getScheduleItems(4);
      return Right(res);
    } catch (e) {
      return Left('Error getting schedule ${e.toString()}');
    }
  }
}
