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
    required TResult Function(FeedResponseModel feedResponse) feedSuccess,
    required TResult Function(ErrorHandler errorHandler) feederror,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? feedloading,
    TResult? Function(FeedResponseModel feedResponse)? feedSuccess,
    TResult? Function(ErrorHandler errorHandler)? feederror,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedloading,
    TResult Function(FeedResponseModel feedResponse)? feedSuccess,
    TResult Function(ErrorHandler errorHandler)? feederror,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(FeedLoading value) feedloading,
    required TResult Function(FeedSuccess value) feedSuccess,
    required TResult Function(FeedError value) feederror,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FeedLoading value)? feedloading,
    TResult? Function(FeedSuccess value)? feedSuccess,
    TResult? Function(FeedError value)? feederror,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FeedLoading value)? feedloading,
    TResult Function(FeedSuccess value)? feedSuccess,
    TResult Function(FeedError value)? feederror,
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
    required TResult Function(FeedResponseModel feedResponse) feedSuccess,
    required TResult Function(ErrorHandler errorHandler) feederror,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? feedloading,
    TResult? Function(FeedResponseModel feedResponse)? feedSuccess,
    TResult? Function(ErrorHandler errorHandler)? feederror,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedloading,
    TResult Function(FeedResponseModel feedResponse)? feedSuccess,
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
    required TResult Function(FeedLoading value) feedloading,
    required TResult Function(FeedSuccess value) feedSuccess,
    required TResult Function(FeedError value) feederror,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FeedLoading value)? feedloading,
    TResult? Function(FeedSuccess value)? feedSuccess,
    TResult? Function(FeedError value)? feederror,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FeedLoading value)? feedloading,
    TResult Function(FeedSuccess value)? feedSuccess,
    TResult Function(FeedError value)? feederror,
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
abstract class _$$FeedLoadingImplCopyWith<$Res> {
  factory _$$FeedLoadingImplCopyWith(
          _$FeedLoadingImpl value, $Res Function(_$FeedLoadingImpl) then) =
      __$$FeedLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeedLoadingImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$FeedLoadingImpl>
    implements _$$FeedLoadingImplCopyWith<$Res> {
  __$$FeedLoadingImplCopyWithImpl(
      _$FeedLoadingImpl _value, $Res Function(_$FeedLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FeedLoadingImpl implements FeedLoading {
  const _$FeedLoadingImpl();

  @override
  String toString() {
    return 'FeedState.feedloading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FeedLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() feedloading,
    required TResult Function(FeedResponseModel feedResponse) feedSuccess,
    required TResult Function(ErrorHandler errorHandler) feederror,
  }) {
    return feedloading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? feedloading,
    TResult? Function(FeedResponseModel feedResponse)? feedSuccess,
    TResult? Function(ErrorHandler errorHandler)? feederror,
  }) {
    return feedloading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedloading,
    TResult Function(FeedResponseModel feedResponse)? feedSuccess,
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
    required TResult Function(FeedLoading value) feedloading,
    required TResult Function(FeedSuccess value) feedSuccess,
    required TResult Function(FeedError value) feederror,
  }) {
    return feedloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FeedLoading value)? feedloading,
    TResult? Function(FeedSuccess value)? feedSuccess,
    TResult? Function(FeedError value)? feederror,
  }) {
    return feedloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FeedLoading value)? feedloading,
    TResult Function(FeedSuccess value)? feedSuccess,
    TResult Function(FeedError value)? feederror,
    required TResult orElse(),
  }) {
    if (feedloading != null) {
      return feedloading(this);
    }
    return orElse();
  }
}

abstract class FeedLoading implements FeedState {
  const factory FeedLoading() = _$FeedLoadingImpl;
}

/// @nodoc
abstract class _$$FeedSuccessImplCopyWith<$Res> {
  factory _$$FeedSuccessImplCopyWith(
          _$FeedSuccessImpl value, $Res Function(_$FeedSuccessImpl) then) =
      __$$FeedSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FeedResponseModel feedResponse});
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
              as FeedResponseModel,
    ));
  }
}

/// @nodoc

class _$FeedSuccessImpl implements FeedSuccess {
  const _$FeedSuccessImpl(this.feedResponse);

  @override
  final FeedResponseModel feedResponse;

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
    required TResult Function(FeedResponseModel feedResponse) feedSuccess,
    required TResult Function(ErrorHandler errorHandler) feederror,
  }) {
    return feedSuccess(feedResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? feedloading,
    TResult? Function(FeedResponseModel feedResponse)? feedSuccess,
    TResult? Function(ErrorHandler errorHandler)? feederror,
  }) {
    return feedSuccess?.call(feedResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedloading,
    TResult Function(FeedResponseModel feedResponse)? feedSuccess,
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
    required TResult Function(FeedLoading value) feedloading,
    required TResult Function(FeedSuccess value) feedSuccess,
    required TResult Function(FeedError value) feederror,
  }) {
    return feedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FeedLoading value)? feedloading,
    TResult? Function(FeedSuccess value)? feedSuccess,
    TResult? Function(FeedError value)? feederror,
  }) {
    return feedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FeedLoading value)? feedloading,
    TResult Function(FeedSuccess value)? feedSuccess,
    TResult Function(FeedError value)? feederror,
    required TResult orElse(),
  }) {
    if (feedSuccess != null) {
      return feedSuccess(this);
    }
    return orElse();
  }
}

abstract class FeedSuccess implements FeedState {
  const factory FeedSuccess(final FeedResponseModel feedResponse) =
      _$FeedSuccessImpl;

  FeedResponseModel get feedResponse;

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedSuccessImplCopyWith<_$FeedSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FeedErrorImplCopyWith<$Res> {
  factory _$$FeedErrorImplCopyWith(
          _$FeedErrorImpl value, $Res Function(_$FeedErrorImpl) then) =
      __$$FeedErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$FeedErrorImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$FeedErrorImpl>
    implements _$$FeedErrorImplCopyWith<$Res> {
  __$$FeedErrorImplCopyWithImpl(
      _$FeedErrorImpl _value, $Res Function(_$FeedErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$FeedErrorImpl(
      null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$FeedErrorImpl implements FeedError {
  const _$FeedErrorImpl(this.errorHandler);

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
            other is _$FeedErrorImpl &&
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
  _$$FeedErrorImplCopyWith<_$FeedErrorImpl> get copyWith =>
      __$$FeedErrorImplCopyWithImpl<_$FeedErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() feedloading,
    required TResult Function(FeedResponseModel feedResponse) feedSuccess,
    required TResult Function(ErrorHandler errorHandler) feederror,
  }) {
    return feederror(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? feedloading,
    TResult? Function(FeedResponseModel feedResponse)? feedSuccess,
    TResult? Function(ErrorHandler errorHandler)? feederror,
  }) {
    return feederror?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedloading,
    TResult Function(FeedResponseModel feedResponse)? feedSuccess,
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
    required TResult Function(FeedLoading value) feedloading,
    required TResult Function(FeedSuccess value) feedSuccess,
    required TResult Function(FeedError value) feederror,
  }) {
    return feederror(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FeedLoading value)? feedloading,
    TResult? Function(FeedSuccess value)? feedSuccess,
    TResult? Function(FeedError value)? feederror,
  }) {
    return feederror?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FeedLoading value)? feedloading,
    TResult Function(FeedSuccess value)? feedSuccess,
    TResult Function(FeedError value)? feederror,
    required TResult orElse(),
  }) {
    if (feederror != null) {
      return feederror(this);
    }
    return orElse();
  }
}

abstract class FeedError implements FeedState {
  const factory FeedError(final ErrorHandler errorHandler) = _$FeedErrorImpl;

  ErrorHandler get errorHandler;

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedErrorImplCopyWith<_$FeedErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
