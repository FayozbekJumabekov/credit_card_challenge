// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeFailure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) noCard,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? noCard,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? noCard,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoCard value) noCard,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoCard value)? noCard,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoCard value)? noCard,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeFailureCopyWith<HomeFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeFailureCopyWith<$Res> {
  factory $HomeFailureCopyWith(
          HomeFailure value, $Res Function(HomeFailure) then) =
      _$HomeFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$HomeFailureCopyWithImpl<$Res> implements $HomeFailureCopyWith<$Res> {
  _$HomeFailureCopyWithImpl(this._value, this._then);

  final HomeFailure _value;
  // ignore: unused_field
  final $Res Function(HomeFailure) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$NoCardCopyWith<$Res> implements $HomeFailureCopyWith<$Res> {
  factory _$$NoCardCopyWith(_$NoCard value, $Res Function(_$NoCard) then) =
      __$$NoCardCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$NoCardCopyWithImpl<$Res> extends _$HomeFailureCopyWithImpl<$Res>
    implements _$$NoCardCopyWith<$Res> {
  __$$NoCardCopyWithImpl(_$NoCard _value, $Res Function(_$NoCard) _then)
      : super(_value, (v) => _then(v as _$NoCard));

  @override
  _$NoCard get _value => super._value as _$NoCard;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NoCard(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoCard implements NoCard {
  const _$NoCard({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'HomeFailure.noCard(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoCard &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$NoCardCopyWith<_$NoCard> get copyWith =>
      __$$NoCardCopyWithImpl<_$NoCard>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) noCard,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) unknown,
  }) {
    return noCard(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? noCard,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? unknown,
  }) {
    return noCard?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? noCard,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (noCard != null) {
      return noCard(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoCard value) noCard,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return noCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoCard value)? noCard,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(Unknown value)? unknown,
  }) {
    return noCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoCard value)? noCard,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (noCard != null) {
      return noCard(this);
    }
    return orElse();
  }
}

abstract class NoCard implements HomeFailure {
  const factory NoCard({required final String message}) = _$NoCard;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$NoCardCopyWith<_$NoCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkFailureCopyWith<$Res>
    implements $HomeFailureCopyWith<$Res> {
  factory _$$NetworkFailureCopyWith(
          _$NetworkFailure value, $Res Function(_$NetworkFailure) then) =
      __$$NetworkFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$NetworkFailureCopyWithImpl<$Res>
    extends _$HomeFailureCopyWithImpl<$Res>
    implements _$$NetworkFailureCopyWith<$Res> {
  __$$NetworkFailureCopyWithImpl(
      _$NetworkFailure _value, $Res Function(_$NetworkFailure) _then)
      : super(_value, (v) => _then(v as _$NetworkFailure));

  @override
  _$NetworkFailure get _value => super._value as _$NetworkFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NetworkFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NetworkFailure implements NetworkFailure {
  const _$NetworkFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'HomeFailure.networkFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$NetworkFailureCopyWith<_$NetworkFailure> get copyWith =>
      __$$NetworkFailureCopyWithImpl<_$NetworkFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) noCard,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) unknown,
  }) {
    return networkFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? noCard,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? unknown,
  }) {
    return networkFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? noCard,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoCard value) noCard,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoCard value)? noCard,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(Unknown value)? unknown,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoCard value)? noCard,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure implements HomeFailure {
  const factory NetworkFailure({required final String message}) =
      _$NetworkFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$NetworkFailureCopyWith<_$NetworkFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownCopyWith<$Res> implements $HomeFailureCopyWith<$Res> {
  factory _$$UnknownCopyWith(_$Unknown value, $Res Function(_$Unknown) then) =
      __$$UnknownCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$UnknownCopyWithImpl<$Res> extends _$HomeFailureCopyWithImpl<$Res>
    implements _$$UnknownCopyWith<$Res> {
  __$$UnknownCopyWithImpl(_$Unknown _value, $Res Function(_$Unknown) _then)
      : super(_value, (v) => _then(v as _$Unknown));

  @override
  _$Unknown get _value => super._value as _$Unknown;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$Unknown(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Unknown implements Unknown {
  const _$Unknown({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'HomeFailure.unknown(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Unknown &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$UnknownCopyWith<_$Unknown> get copyWith =>
      __$$UnknownCopyWithImpl<_$Unknown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) noCard,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) unknown,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? noCard,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? noCard,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoCard value) noCard,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoCard value)? noCard,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoCard value)? noCard,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements HomeFailure {
  const factory Unknown({required final String message}) = _$Unknown;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$UnknownCopyWith<_$Unknown> get copyWith =>
      throw _privateConstructorUsedError;
}
