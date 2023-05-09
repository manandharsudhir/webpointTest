// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'formz_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormzStatus<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() progress,
    required TResult Function(Object error) error,
    required TResult Function(T? data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? progress,
    TResult? Function(Object error)? error,
    TResult? Function(T? data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function(Object error)? error,
    TResult Function(T? data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormzStatusInitial<T> value) initial,
    required TResult Function(FormzStatusProgress<T> value) progress,
    required TResult Function(FormzStatusError<T> value) error,
    required TResult Function(FormzStatusSuccess<T> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormzStatusInitial<T> value)? initial,
    TResult? Function(FormzStatusProgress<T> value)? progress,
    TResult? Function(FormzStatusError<T> value)? error,
    TResult? Function(FormzStatusSuccess<T> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormzStatusInitial<T> value)? initial,
    TResult Function(FormzStatusProgress<T> value)? progress,
    TResult Function(FormzStatusError<T> value)? error,
    TResult Function(FormzStatusSuccess<T> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormzStatusCopyWith<T, $Res> {
  factory $FormzStatusCopyWith(
          FormzStatus<T> value, $Res Function(FormzStatus<T>) then) =
      _$FormzStatusCopyWithImpl<T, $Res, FormzStatus<T>>;
}

/// @nodoc
class _$FormzStatusCopyWithImpl<T, $Res, $Val extends FormzStatus<T>>
    implements $FormzStatusCopyWith<T, $Res> {
  _$FormzStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FormzStatusInitialCopyWith<T, $Res> {
  factory _$$FormzStatusInitialCopyWith(_$FormzStatusInitial<T> value,
          $Res Function(_$FormzStatusInitial<T>) then) =
      __$$FormzStatusInitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$FormzStatusInitialCopyWithImpl<T, $Res>
    extends _$FormzStatusCopyWithImpl<T, $Res, _$FormzStatusInitial<T>>
    implements _$$FormzStatusInitialCopyWith<T, $Res> {
  __$$FormzStatusInitialCopyWithImpl(_$FormzStatusInitial<T> _value,
      $Res Function(_$FormzStatusInitial<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FormzStatusInitial<T> implements FormzStatusInitial<T> {
  const _$FormzStatusInitial();

  @override
  String toString() {
    return 'FormzStatus<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FormzStatusInitial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() progress,
    required TResult Function(Object error) error,
    required TResult Function(T? data) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? progress,
    TResult? Function(Object error)? error,
    TResult? Function(T? data)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function(Object error)? error,
    TResult Function(T? data)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormzStatusInitial<T> value) initial,
    required TResult Function(FormzStatusProgress<T> value) progress,
    required TResult Function(FormzStatusError<T> value) error,
    required TResult Function(FormzStatusSuccess<T> value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormzStatusInitial<T> value)? initial,
    TResult? Function(FormzStatusProgress<T> value)? progress,
    TResult? Function(FormzStatusError<T> value)? error,
    TResult? Function(FormzStatusSuccess<T> value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormzStatusInitial<T> value)? initial,
    TResult Function(FormzStatusProgress<T> value)? progress,
    TResult Function(FormzStatusError<T> value)? error,
    TResult Function(FormzStatusSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FormzStatusInitial<T> implements FormzStatus<T> {
  const factory FormzStatusInitial() = _$FormzStatusInitial<T>;
}

/// @nodoc
abstract class _$$FormzStatusProgressCopyWith<T, $Res> {
  factory _$$FormzStatusProgressCopyWith(_$FormzStatusProgress<T> value,
          $Res Function(_$FormzStatusProgress<T>) then) =
      __$$FormzStatusProgressCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$FormzStatusProgressCopyWithImpl<T, $Res>
    extends _$FormzStatusCopyWithImpl<T, $Res, _$FormzStatusProgress<T>>
    implements _$$FormzStatusProgressCopyWith<T, $Res> {
  __$$FormzStatusProgressCopyWithImpl(_$FormzStatusProgress<T> _value,
      $Res Function(_$FormzStatusProgress<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FormzStatusProgress<T> implements FormzStatusProgress<T> {
  const _$FormzStatusProgress();

  @override
  String toString() {
    return 'FormzStatus<$T>.progress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FormzStatusProgress<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() progress,
    required TResult Function(Object error) error,
    required TResult Function(T? data) success,
  }) {
    return progress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? progress,
    TResult? Function(Object error)? error,
    TResult? Function(T? data)? success,
  }) {
    return progress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function(Object error)? error,
    TResult Function(T? data)? success,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormzStatusInitial<T> value) initial,
    required TResult Function(FormzStatusProgress<T> value) progress,
    required TResult Function(FormzStatusError<T> value) error,
    required TResult Function(FormzStatusSuccess<T> value) success,
  }) {
    return progress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormzStatusInitial<T> value)? initial,
    TResult? Function(FormzStatusProgress<T> value)? progress,
    TResult? Function(FormzStatusError<T> value)? error,
    TResult? Function(FormzStatusSuccess<T> value)? success,
  }) {
    return progress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormzStatusInitial<T> value)? initial,
    TResult Function(FormzStatusProgress<T> value)? progress,
    TResult Function(FormzStatusError<T> value)? error,
    TResult Function(FormzStatusSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(this);
    }
    return orElse();
  }
}

abstract class FormzStatusProgress<T> implements FormzStatus<T> {
  const factory FormzStatusProgress() = _$FormzStatusProgress<T>;
}

/// @nodoc
abstract class _$$FormzStatusErrorCopyWith<T, $Res> {
  factory _$$FormzStatusErrorCopyWith(_$FormzStatusError<T> value,
          $Res Function(_$FormzStatusError<T>) then) =
      __$$FormzStatusErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$FormzStatusErrorCopyWithImpl<T, $Res>
    extends _$FormzStatusCopyWithImpl<T, $Res, _$FormzStatusError<T>>
    implements _$$FormzStatusErrorCopyWith<T, $Res> {
  __$$FormzStatusErrorCopyWithImpl(
      _$FormzStatusError<T> _value, $Res Function(_$FormzStatusError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FormzStatusError<T>(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$FormzStatusError<T> implements FormzStatusError<T> {
  const _$FormzStatusError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'FormzStatus<$T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormzStatusError<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormzStatusErrorCopyWith<T, _$FormzStatusError<T>> get copyWith =>
      __$$FormzStatusErrorCopyWithImpl<T, _$FormzStatusError<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() progress,
    required TResult Function(Object error) error,
    required TResult Function(T? data) success,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? progress,
    TResult? Function(Object error)? error,
    TResult? Function(T? data)? success,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function(Object error)? error,
    TResult Function(T? data)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormzStatusInitial<T> value) initial,
    required TResult Function(FormzStatusProgress<T> value) progress,
    required TResult Function(FormzStatusError<T> value) error,
    required TResult Function(FormzStatusSuccess<T> value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormzStatusInitial<T> value)? initial,
    TResult? Function(FormzStatusProgress<T> value)? progress,
    TResult? Function(FormzStatusError<T> value)? error,
    TResult? Function(FormzStatusSuccess<T> value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormzStatusInitial<T> value)? initial,
    TResult Function(FormzStatusProgress<T> value)? progress,
    TResult Function(FormzStatusError<T> value)? error,
    TResult Function(FormzStatusSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FormzStatusError<T> implements FormzStatus<T> {
  const factory FormzStatusError(final Object error) = _$FormzStatusError<T>;

  Object get error;
  @JsonKey(ignore: true)
  _$$FormzStatusErrorCopyWith<T, _$FormzStatusError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormzStatusSuccessCopyWith<T, $Res> {
  factory _$$FormzStatusSuccessCopyWith(_$FormzStatusSuccess<T> value,
          $Res Function(_$FormzStatusSuccess<T>) then) =
      __$$FormzStatusSuccessCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data});
}

/// @nodoc
class __$$FormzStatusSuccessCopyWithImpl<T, $Res>
    extends _$FormzStatusCopyWithImpl<T, $Res, _$FormzStatusSuccess<T>>
    implements _$$FormzStatusSuccessCopyWith<T, $Res> {
  __$$FormzStatusSuccessCopyWithImpl(_$FormzStatusSuccess<T> _value,
      $Res Function(_$FormzStatusSuccess<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$FormzStatusSuccess<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$FormzStatusSuccess<T> implements FormzStatusSuccess<T> {
  const _$FormzStatusSuccess({this.data});

  @override
  final T? data;

  @override
  String toString() {
    return 'FormzStatus<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormzStatusSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormzStatusSuccessCopyWith<T, _$FormzStatusSuccess<T>> get copyWith =>
      __$$FormzStatusSuccessCopyWithImpl<T, _$FormzStatusSuccess<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() progress,
    required TResult Function(Object error) error,
    required TResult Function(T? data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? progress,
    TResult? Function(Object error)? error,
    TResult? Function(T? data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? progress,
    TResult Function(Object error)? error,
    TResult Function(T? data)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormzStatusInitial<T> value) initial,
    required TResult Function(FormzStatusProgress<T> value) progress,
    required TResult Function(FormzStatusError<T> value) error,
    required TResult Function(FormzStatusSuccess<T> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormzStatusInitial<T> value)? initial,
    TResult? Function(FormzStatusProgress<T> value)? progress,
    TResult? Function(FormzStatusError<T> value)? error,
    TResult? Function(FormzStatusSuccess<T> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormzStatusInitial<T> value)? initial,
    TResult Function(FormzStatusProgress<T> value)? progress,
    TResult Function(FormzStatusError<T> value)? error,
    TResult Function(FormzStatusSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class FormzStatusSuccess<T> implements FormzStatus<T> {
  const factory FormzStatusSuccess({final T? data}) = _$FormzStatusSuccess<T>;

  T? get data;
  @JsonKey(ignore: true)
  _$$FormzStatusSuccessCopyWith<T, _$FormzStatusSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
