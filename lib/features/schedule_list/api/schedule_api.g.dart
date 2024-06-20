// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataNet _$DataNetFromJson(Map<String, dynamic> json) => DataNet(
      mal_id: (json['mal_id'] as num).toInt(),
      title: json['title'] as String,
      status: json['status'] as String,
      synopsis: json['synopsis'] as String?,
      broadcast:
          BroadcastNet.fromJson(json['broadcast'] as Map<String, dynamic>),
      genres: (json['genres'] as List<dynamic>)
          .map((e) => GenresNet.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: ImagesNet.fromJson(json['images'] as Map<String, dynamic>),
      popularity: (json['popularity'] as num).toInt(),
      score: (json['score'] as num).toDouble(),
    );

Map<String, dynamic> _$DataNetToJson(DataNet instance) => <String, dynamic>{
      'mal_id': instance.mal_id,
      'title': instance.title,
      'status': instance.status,
      'synopsis': instance.synopsis,
      'broadcast': instance.broadcast,
      'genres': instance.genres,
      'images': instance.images,
      'popularity': instance.popularity,
      'score': instance.score,
    };

ScheduleListNet _$ScheduleListNetFromJson(Map<String, dynamic> json) =>
    ScheduleListNet(
      data: (json['data'] as List<dynamic>)
          .map((e) => DataNet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ScheduleListNetToJson(ScheduleListNet instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

BroadcastNet _$BroadcastNetFromJson(Map<String, dynamic> json) => BroadcastNet(
      string: json['string'] as String,
    );

Map<String, dynamic> _$BroadcastNetToJson(BroadcastNet instance) =>
    <String, dynamic>{
      'string': instance.string,
    };

GenresNet _$GenresNetFromJson(Map<String, dynamic> json) => GenresNet(
      name: json['name'] as String,
    );

Map<String, dynamic> _$GenresNetToJson(GenresNet instance) => <String, dynamic>{
      'name': instance.name,
    };

ImagesNet _$ImagesNetFromJson(Map<String, dynamic> json) => ImagesNet(
      jpg: JpgNet.fromJson(json['jpg'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ImagesNetToJson(ImagesNet instance) => <String, dynamic>{
      'jpg': instance.jpg,
    };

JpgNet _$JpgNetFromJson(Map<String, dynamic> json) => JpgNet(
      image_url: json['image_url'] as String,
    );

Map<String, dynamic> _$JpgNetToJson(JpgNet instance) => <String, dynamic>{
      'image_url': instance.image_url,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ScheduleApi implements ScheduleApi {
  _ScheduleApi(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ScheduleListNet> getScheduleItems(int page) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'page': page};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<ScheduleListNet>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'schedules/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ScheduleListNet.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
