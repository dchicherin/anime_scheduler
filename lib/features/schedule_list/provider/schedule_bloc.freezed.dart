// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSchedule,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleGet value) getSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleGet value)? getSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleGet value)? getSchedule,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEventCopyWith<$Res> {
  factory $ScheduleEventCopyWith(
          ScheduleEvent value, $Res Function(ScheduleEvent) then) =
      _$ScheduleEventCopyWithImpl<$Res, ScheduleEvent>;
}

/// @nodoc
class _$ScheduleEventCopyWithImpl<$Res, $Val extends ScheduleEvent>
    implements $ScheduleEventCopyWith<$Res> {
  _$ScheduleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ScheduleGetImplCopyWith<$Res> {
  factory _$$ScheduleGetImplCopyWith(
          _$ScheduleGetImpl value, $Res Function(_$ScheduleGetImpl) then) =
      __$$ScheduleGetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScheduleGetImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$ScheduleGetImpl>
    implements _$$ScheduleGetImplCopyWith<$Res> {
  __$$ScheduleGetImplCopyWithImpl(
      _$ScheduleGetImpl _value, $Res Function(_$ScheduleGetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScheduleGetImpl implements ScheduleGet {
  const _$ScheduleGetImpl();

  @override
  String toString() {
    return 'ScheduleEvent.getSchedule()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ScheduleGetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSchedule,
  }) {
    return getSchedule();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSchedule,
  }) {
    return getSchedule?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSchedule,
    required TResult orElse(),
  }) {
    if (getSchedule != null) {
      return getSchedule();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleGet value) getSchedule,
  }) {
    return getSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleGet value)? getSchedule,
  }) {
    return getSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleGet value)? getSchedule,
    required TResult orElse(),
  }) {
    if (getSchedule != null) {
      return getSchedule(this);
    }
    return orElse();
  }
}

abstract class ScheduleGet implements ScheduleEvent {
  const factory ScheduleGet() = _$ScheduleGetImpl;
}

/// @nodoc
mixin _$ScheduleState {
  ScheduleStatus get status => throw _privateConstructorUsedError;
  String get errorText => throw _privateConstructorUsedError;
  List<ScheduleItem> get scheduleList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleStateCopyWith<ScheduleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleStateCopyWith<$Res> {
  factory $ScheduleStateCopyWith(
          ScheduleState value, $Res Function(ScheduleState) then) =
      _$ScheduleStateCopyWithImpl<$Res, ScheduleState>;
  @useResult
  $Res call(
      {ScheduleStatus status,
      String errorText,
      List<ScheduleItem> scheduleList});

  $ScheduleStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$ScheduleStateCopyWithImpl<$Res, $Val extends ScheduleState>
    implements $ScheduleStateCopyWith<$Res> {
  _$ScheduleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorText = null,
    Object? scheduleList = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ScheduleStatus,
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleList: null == scheduleList
          ? _value.scheduleList
          : scheduleList // ignore: cast_nullable_to_non_nullable
              as List<ScheduleItem>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ScheduleStatusCopyWith<$Res> get status {
    return $ScheduleStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScheduleStateImplCopyWith<$Res>
    implements $ScheduleStateCopyWith<$Res> {
  factory _$$ScheduleStateImplCopyWith(
          _$ScheduleStateImpl value, $Res Function(_$ScheduleStateImpl) then) =
      __$$ScheduleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ScheduleStatus status,
      String errorText,
      List<ScheduleItem> scheduleList});

  @override
  $ScheduleStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$ScheduleStateImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$ScheduleStateImpl>
    implements _$$ScheduleStateImplCopyWith<$Res> {
  __$$ScheduleStateImplCopyWithImpl(
      _$ScheduleStateImpl _value, $Res Function(_$ScheduleStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorText = null,
    Object? scheduleList = null,
  }) {
    return _then(_$ScheduleStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ScheduleStatus,
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleList: null == scheduleList
          ? _value._scheduleList
          : scheduleList // ignore: cast_nullable_to_non_nullable
              as List<ScheduleItem>,
    ));
  }
}

/// @nodoc

class _$ScheduleStateImpl implements _ScheduleState {
  const _$ScheduleStateImpl(
      {required this.status,
      required this.errorText,
      required final List<ScheduleItem> scheduleList})
      : _scheduleList = scheduleList;

  @override
  final ScheduleStatus status;
  @override
  final String errorText;
  final List<ScheduleItem> _scheduleList;
  @override
  List<ScheduleItem> get scheduleList {
    if (_scheduleList is EqualUnmodifiableListView) return _scheduleList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scheduleList);
  }

  @override
  String toString() {
    return 'ScheduleState(status: $status, errorText: $errorText, scheduleList: $scheduleList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText) &&
            const DeepCollectionEquality()
                .equals(other._scheduleList, _scheduleList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, errorText,
      const DeepCollectionEquality().hash(_scheduleList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleStateImplCopyWith<_$ScheduleStateImpl> get copyWith =>
      __$$ScheduleStateImplCopyWithImpl<_$ScheduleStateImpl>(this, _$identity);
}

abstract class _ScheduleState implements ScheduleState {
  const factory _ScheduleState(
      {required final ScheduleStatus status,
      required final String errorText,
      required final List<ScheduleItem> scheduleList}) = _$ScheduleStateImpl;

  @override
  ScheduleStatus get status;
  @override
  String get errorText;
  @override
  List<ScheduleItem> get scheduleList;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleStateImplCopyWith<_$ScheduleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
