// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FeedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() feedloading,
    required TResult Function(FeedResponse feedResponse) feedSuccess,
    required TResult Function(ErrorHandler errorHandler) feederror,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? feedloading,
    TResult? Function(FeedResponse feedResponse)? feedSuccess,
    TResult? Function(ErrorHandler errorHandler)? feederror,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedloading,
    TResult Function(FeedResponse feedResponse)? feedSuccess,
    TResult Function(ErrorHandler errorHandler)? feederror,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) feedloading,
    required TResult Function(FeedSuccess value) feedSuccess,
    required TResult Function(Error value) feederror,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? feedloading,
    TResult? Function(FeedSuccess value)? feedSuccess,
    TResult? Function(Error value)? feederror,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? feedloading,
    TResult Function(FeedSuccess value)? feedSuccess,
    TResult Function(Error value)? feederror,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStateCopyWith<$Res> {
  factory $FeedStateCopyWith(FeedState value, $Res Function(FeedState) then) =
      _$FeedStateCopyWithImpl<$Res, FeedState>;
}

/// @nodoc
class _$FeedStateCopyWithImpl<$Res, $Val extends FeedState>
    implements $FeedStateCopyWith<$Res> {
  _$FeedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FeedState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() feedloading,
    required TResult Function(FeedResponse feedResponse) feedSuccess,
    required TResult Function(ErrorHandler errorHandler) feederror,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? feedloading,
    TResult? Function(FeedResponse feedResponse)? feedSuccess,
    TResult? Function(ErrorHandler errorHandler)? feederror,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedloading,
    TResult Function(FeedResponse feedResponse)? feedSuccess,
    TResult Function(ErrorHandler errorHandler)? feederror,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) feedloading,
    required TResult Function(FeedSuccess value) feedSuccess,
    required TResult Function(Error value) feederror,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? feedloading,
    TResult? Function(FeedSuccess value)? feedSuccess,
    TResult? Function(Error value)? feederror,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? feedloading,
    TResult Function(FeedSuccess value)? feedSuccess,
    TResult Function(Error value)? feederror,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FeedState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'FeedState.feedloading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() feedloading,
    required TResult Function(FeedResponse feedResponse) feedSuccess,
    required TResult Function(ErrorHandler errorHandler) feederror,
  }) {
    return feedloading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? feedloading,
    TResult? Function(FeedResponse feedResponse)? feedSuccess,
    TResult? Function(ErrorHandler errorHandler)? feederror,
  }) {
    return feedloading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedloading,
    TResult Function(FeedResponse feedResponse)? feedSuccess,
    TResult Function(ErrorHandler errorHandler)? feederror,
    required TResult orElse(),
  }) {
    if (feedloading != null) {
      return feedloading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) feedloading,
    required TResult Function(FeedSuccess value) feedSuccess,
    required TResult Function(Error value) feederror,
  }) {
    return feedloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? feedloading,
    TResult? Function(FeedSuccess value)? feedSuccess,
    TResult? Function(Error value)? feederror,
  }) {
    return feedloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? feedloading,
    TResult Function(FeedSuccess value)? feedSuccess,
    TResult Function(Error value)? feederror,
    required TResult orElse(),
  }) {
    if (feedloading != null) {
      return feedloading(this);
    }
    return orElse();
  }
}

abstract class Loading implements FeedState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$FeedSuccessImplCopyWith<$Res> {
  factory _$$FeedSuccessImplCopyWith(
          _$FeedSuccessImpl value, $Res Function(_$FeedSuccessImpl) then) =
      __$$FeedSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FeedResponse feedResponse});
}

/// @nodoc
class __$$FeedSuccessImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$FeedSuccessImpl>
    implements _$$FeedSuccessImplCopyWith<$Res> {
  __$$FeedSuccessImplCopyWithImpl(
      _$FeedSuccessImpl _value, $Res Function(_$FeedSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedResponse = null,
  }) {
    return _then(_$FeedSuccessImpl(
      null == feedResponse
          ? _value.feedResponse
          : feedResponse // ignore: cast_nullable_to_non_nullable
              as FeedResponse,
    ));
  }
}

/// @nodoc

class _$FeedSuccessImpl implements FeedSuccess {
  const _$FeedSuccessImpl(this.feedResponse);

  @override
  final FeedResponse feedResponse;

  @override
  String toString() {
    return 'FeedState.feedSuccess(feedResponse: $feedResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedSuccessImpl &&
            (identical(other.feedResponse, feedResponse) ||
                other.feedResponse == feedResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feedResponse);

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedSuccessImplCopyWith<_$FeedSuccessImpl> get copyWith =>
      __$$FeedSuccessImplCopyWithImpl<_$FeedSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() feedloading,
    required TResult Function(FeedResponse feedResponse) feedSuccess,
    required TResult Function(ErrorHandler errorHandler) feederror,
  }) {
    return feedSuccess(feedResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? feedloading,
    TResult? Function(FeedResponse feedResponse)? feedSuccess,
    TResult? Function(ErrorHandler errorHandler)? feederror,
  }) {
    return feedSuccess?.call(feedResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedloading,
    TResult Function(FeedResponse feedResponse)? feedSuccess,
    TResult Function(ErrorHandler errorHandler)? feederror,
    required TResult orElse(),
  }) {
    if (feedSuccess != null) {
      return feedSuccess(feedResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) feedloading,
    required TResult Function(FeedSuccess value) feedSuccess,
    required TResult Function(Error value) feederror,
  }) {
    return feedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? feedloading,
    TResult? Function(FeedSuccess value)? feedSuccess,
    TResult? Function(Error value)? feederror,
  }) {
    return feedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? feedloading,
    TResult Function(FeedSuccess value)? feedSuccess,
    TResult Function(Error value)? feederror,
    required TResult orElse(),
  }) {
    if (feedSuccess != null) {
      return feedSuccess(this);
    }
    return orElse();
  }
}

abstract class FeedSuccess implements FeedState {
  const factory FeedSuccess(final FeedResponse feedResponse) =
      _$FeedSuccessImpl;

  FeedResponse get feedResponse;

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedSuccessImplCopyWith<_$FeedSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$ErrorImpl(
      null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'FeedState.feederror(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() feedloading,
    required TResult Function(FeedResponse feedResponse) feedSuccess,
    required TResult Function(ErrorHandler errorHandler) feederror,
  }) {
    return feederror(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? feedloading,
    TResult? Function(FeedResponse feedResponse)? feedSuccess,
    TResult? Function(ErrorHandler errorHandler)? feederror,
  }) {
    return feederror?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedloading,
    TResult Function(FeedResponse feedResponse)? feedSuccess,
    TResult Function(ErrorHandler errorHandler)? feederror,
    required TResult orElse(),
  }) {
    if (feederror != null) {
      return feederror(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) feedloading,
    required TResult Function(FeedSuccess value) feedSuccess,
    required TResult Function(Error value) feederror,
  }) {
    return feederror(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? feedloading,
    TResult? Function(FeedSuccess value)? feedSuccess,
    TResult? Function(Error value)? feederror,
  }) {
    return feederror?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? feedloading,
    TResult Function(FeedSuccess value)? feedSuccess,
    TResult Function(Error value)? feederror,
    required TResult orElse(),
  }) {
    if (feederror != null) {
      return feederror(this);
    }
    return orElse();
  }
}

abstract class Error implements FeedState {
  const factory Error(final ErrorHandler errorHandler) = _$ErrorImpl;

  ErrorHandler get errorHandler;

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
