// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduleItem {
  String get status => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get broadcastTime => throw _privateConstructorUsedError;
  String get mainGenre => throw _privateConstructorUsedError;
  String get synopsis => throw _privateConstructorUsedError;
  String get imageURL => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  int get popularity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleItemCopyWith<ScheduleItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleItemCopyWith<$Res> {
  factory $ScheduleItemCopyWith(
          ScheduleItem value, $Res Function(ScheduleItem) then) =
      _$ScheduleItemCopyWithImpl<$Res, ScheduleItem>;
  @useResult
  $Res call(
      {String status,
      String title,
      String broadcastTime,
      String mainGenre,
      String synopsis,
      String imageURL,
      double score,
      int popularity});
}

/// @nodoc
class _$ScheduleItemCopyWithImpl<$Res, $Val extends ScheduleItem>
    implements $ScheduleItemCopyWith<$Res> {
  _$ScheduleItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? title = null,
    Object? broadcastTime = null,
    Object? mainGenre = null,
    Object? synopsis = null,
    Object? imageURL = null,
    Object? score = null,
    Object? popularity = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      broadcastTime: null == broadcastTime
          ? _value.broadcastTime
          : broadcastTime // ignore: cast_nullable_to_non_nullable
              as String,
      mainGenre: null == mainGenre
          ? _value.mainGenre
          : mainGenre // ignore: cast_nullable_to_non_nullable
              as String,
      synopsis: null == synopsis
          ? _value.synopsis
          : synopsis // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleItemImplCopyWith<$Res>
    implements $ScheduleItemCopyWith<$Res> {
  factory _$$ScheduleItemImplCopyWith(
          _$ScheduleItemImpl value, $Res Function(_$ScheduleItemImpl) then) =
      __$$ScheduleItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status,
      String title,
      String broadcastTime,
      String mainGenre,
      String synopsis,
      String imageURL,
      double score,
      int popularity});
}

/// @nodoc
class __$$ScheduleItemImplCopyWithImpl<$Res>
    extends _$ScheduleItemCopyWithImpl<$Res, _$ScheduleItemImpl>
    implements _$$ScheduleItemImplCopyWith<$Res> {
  __$$ScheduleItemImplCopyWithImpl(
      _$ScheduleItemImpl _value, $Res Function(_$ScheduleItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? title = null,
    Object? broadcastTime = null,
    Object? mainGenre = null,
    Object? synopsis = null,
    Object? imageURL = null,
    Object? score = null,
    Object? popularity = null,
  }) {
    return _then(_$ScheduleItemImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      broadcastTime: null == broadcastTime
          ? _value.broadcastTime
          : broadcastTime // ignore: cast_nullable_to_non_nullable
              as String,
      mainGenre: null == mainGenre
          ? _value.mainGenre
          : mainGenre // ignore: cast_nullable_to_non_nullable
              as String,
      synopsis: null == synopsis
          ? _value.synopsis
          : synopsis // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ScheduleItemImpl implements _ScheduleItem {
  const _$ScheduleItemImpl(
      {required this.status,
      required this.title,
      required this.broadcastTime,
      required this.mainGenre,
      required this.synopsis,
      required this.imageURL,
      required this.score,
      required this.popularity});

  @override
  final String status;
  @override
  final String title;
  @override
  final String broadcastTime;
  @override
  final String mainGenre;
  @override
  final String synopsis;
  @override
  final String imageURL;
  @override
  final double score;
  @override
  final int popularity;

  @override
  String toString() {
    return 'ScheduleItem(status: $status, title: $title, broadcastTime: $broadcastTime, mainGenre: $mainGenre, synopsis: $synopsis, imageURL: $imageURL, score: $score, popularity: $popularity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleItemImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.broadcastTime, broadcastTime) ||
                other.broadcastTime == broadcastTime) &&
            (identical(other.mainGenre, mainGenre) ||
                other.mainGenre == mainGenre) &&
            (identical(other.synopsis, synopsis) ||
                other.synopsis == synopsis) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, title, broadcastTime,
      mainGenre, synopsis, imageURL, score, popularity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleItemImplCopyWith<_$ScheduleItemImpl> get copyWith =>
      __$$ScheduleItemImplCopyWithImpl<_$ScheduleItemImpl>(this, _$identity);
}

abstract class _ScheduleItem implements ScheduleItem {
  const factory _ScheduleItem(
      {required final String status,
      required final String title,
      required final String broadcastTime,
      required final String mainGenre,
      required final String synopsis,
      required final String imageURL,
      required final double score,
      required final int popularity}) = _$ScheduleItemImpl;

  @override
  String get status;
  @override
  String get title;
  @override
  String get broadcastTime;
  @override
  String get mainGenre;
  @override
  String get synopsis;
  @override
  String get imageURL;
  @override
  double get score;
  @override
  int get popularity;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleItemImplCopyWith<_$ScheduleItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
