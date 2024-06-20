import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part "schedule_api.g.dart";

@injectable
@RestApi()
abstract class ScheduleApi {
  @factoryMethod
  factory ScheduleApi(
    Dio dio, {
    @Named("baseUrl") required String baseUrl,
  }) = _ScheduleApi;

  @GET('schedules/')
  Future<ScheduleListNet> getScheduleItems(
    @Query("page") int page,
  );
}

@JsonSerializable()
class DataNet {
  int mal_id;
  String title;
  String status;
  String? synopsis;
  BroadcastNet broadcast;
  List<GenresNet> genres;
  ImagesNet images;
  int popularity;
  double score;

  DataNet({
    required this.mal_id,
    required this.title,
    required this.status,
    this.synopsis,
    required this.broadcast,
    required this.genres,
    required this.images,
    required this.popularity,
    required this.score,
  });

  factory DataNet.fromJson(Map<String, dynamic> json) =>
      _$DataNetFromJson(json);

  Map<String, dynamic> toJson() => _$DataNetToJson(this);
}

@JsonSerializable()
class ScheduleListNet {
  List<DataNet> data;

  ScheduleListNet({
    required this.data,
  });

  factory ScheduleListNet.fromJson(Map<String, dynamic> json) =>
      _$ScheduleListNetFromJson(json);
  Map<String, dynamic> toJson() => _$ScheduleListNetToJson(this);
}

@JsonSerializable()
class BroadcastNet {
  String string;
  BroadcastNet({
    required this.string,
  });
  factory BroadcastNet.fromJson(Map<String, dynamic> json) =>
      _$BroadcastNetFromJson(json);
  Map<String, dynamic> toJson() => _$BroadcastNetToJson(this);
}

@JsonSerializable()
class GenresNet {
  String name;
  GenresNet({
    required this.name,
  });
  factory GenresNet.fromJson(Map<String, dynamic> json) =>
      _$GenresNetFromJson(json);
  Map<String, dynamic> toJson() => _$GenresNetToJson(this);
}

@JsonSerializable()
class ImagesNet {
  JpgNet jpg;
  ImagesNet({
    required this.jpg,
  });
  factory ImagesNet.fromJson(Map<String, dynamic> json) =>
      _$ImagesNetFromJson(json);
  Map<String, dynamic> toJson() => _$ImagesNetToJson(this);
}

@JsonSerializable()
class JpgNet {
  String image_url;
  JpgNet({
    required this.image_url,
  });
  factory JpgNet.fromJson(Map<String, dynamic> json) => _$JpgNetFromJson(json);
  Map<String, dynamic> toJson() => _$JpgNetToJson(this);
}
