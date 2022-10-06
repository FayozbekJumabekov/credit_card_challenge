// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_upload_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImageUploadFailure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) invalidCredential,
    required TResult Function(String message) noAdminAccess,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? invalidCredential,
    TResult Function(String message)? noAdminAccess,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalidCredential,
    TResult Function(String message)? noAdminAccess,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidCredentials value) invalidCredential,
    required TResult Function(NoAdminAccess value) noAdminAccess,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidCredentials value)? invalidCredential,
    TResult Function(NoAdminAccess value)? noAdminAccess,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidCredentials value)? invalidCredential,
    TResult Function(NoAdminAccess value)? noAdminAccess,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageUploadFailureCopyWith<ImageUploadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUploadFailureCopyWith<$Res> {
  factory $ImageUploadFailureCopyWith(
          ImageUploadFailure value, $Res Function(ImageUploadFailure) then) =
      _$ImageUploadFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ImageUploadFailureCopyWithImpl<$Res>
    implements $ImageUploadFailureCopyWith<$Res> {
  _$ImageUploadFailureCopyWithImpl(this._value, this._then);

  final ImageUploadFailure _value;
  // ignore: unused_field
  final $Res Function(ImageUploadFailure) _then;

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
abstract class _$$InvalidCredentialsCopyWith<$Res>
    implements $ImageUploadFailureCopyWith<$Res> {
  factory _$$InvalidCredentialsCopyWith(_$InvalidCredentials value,
          $Res Function(_$InvalidCredentials) then) =
      __$$InvalidCredentialsCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$InvalidCredentialsCopyWithImpl<$Res>
    extends _$ImageUploadFailureCopyWithImpl<$Res>
    implements _$$InvalidCredentialsCopyWith<$Res> {
  __$$InvalidCredentialsCopyWithImpl(
      _$InvalidCredentials _value, $Res Function(_$InvalidCredentials) _then)
      : super(_value, (v) => _then(v as _$InvalidCredentials));

  @override
  _$InvalidCredentials get _value => super._value as _$InvalidCredentials;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$InvalidCredentials(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidCredentials implements InvalidCredentials {
  const _$InvalidCredentials({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ImageUploadFailure.invalidCredential(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidCredentials &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$InvalidCredentialsCopyWith<_$InvalidCredentials> get copyWith =>
      __$$InvalidCredentialsCopyWithImpl<_$InvalidCredentials>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) invalidCredential,
    required TResult Function(String message) noAdminAccess,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) unknown,
  }) {
    return invalidCredential(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? invalidCredential,
    TResult Function(String message)? noAdminAccess,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? unknown,
  }) {
    return invalidCredential?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalidCredential,
    TResult Function(String message)? noAdminAccess,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (invalidCredential != null) {
      return invalidCredential(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidCredentials value) invalidCredential,
    required TResult Function(NoAdminAccess value) noAdminAccess,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return invalidCredential(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidCredentials value)? invalidCredential,
    TResult Function(NoAdminAccess value)? noAdminAccess,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(Unknown value)? unknown,
  }) {
    return invalidCredential?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidCredentials value)? invalidCredential,
    TResult Function(NoAdminAccess value)? noAdminAccess,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (invalidCredential != null) {
      return invalidCredential(this);
    }
    return orElse();
  }
}

abstract class InvalidCredentials implements ImageUploadFailure {
  const factory InvalidCredentials({required final String message}) =
      _$InvalidCredentials;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$InvalidCredentialsCopyWith<_$InvalidCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoAdminAccessCopyWith<$Res>
    implements $ImageUploadFailureCopyWith<$Res> {
  factory _$$NoAdminAccessCopyWith(
          _$NoAdminAccess value, $Res Function(_$NoAdminAccess) then) =
      __$$NoAdminAccessCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$NoAdminAccessCopyWithImpl<$Res>
    extends _$ImageUploadFailureCopyWithImpl<$Res>
    implements _$$NoAdminAccessCopyWith<$Res> {
  __$$NoAdminAccessCopyWithImpl(
      _$NoAdminAccess _value, $Res Function(_$NoAdminAccess) _then)
      : super(_value, (v) => _then(v as _$NoAdminAccess));

  @override
  _$NoAdminAccess get _value => super._value as _$NoAdminAccess;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NoAdminAccess(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoAdminAccess implements NoAdminAccess {
  const _$NoAdminAccess({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ImageUploadFailure.noAdminAccess(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoAdminAccess &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$NoAdminAccessCopyWith<_$NoAdminAccess> get copyWith =>
      __$$NoAdminAccessCopyWithImpl<_$NoAdminAccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) invalidCredential,
    required TResult Function(String message) noAdminAccess,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) unknown,
  }) {
    return noAdminAccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? invalidCredential,
    TResult Function(String message)? noAdminAccess,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? unknown,
  }) {
    return noAdminAccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalidCredential,
    TResult Function(String message)? noAdminAccess,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (noAdminAccess != null) {
      return noAdminAccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidCredentials value) invalidCredential,
    required TResult Function(NoAdminAccess value) noAdminAccess,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return noAdminAccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidCredentials value)? invalidCredential,
    TResult Function(NoAdminAccess value)? noAdminAccess,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(Unknown value)? unknown,
  }) {
    return noAdminAccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidCredentials value)? invalidCredential,
    TResult Function(NoAdminAccess value)? noAdminAccess,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (noAdminAccess != null) {
      return noAdminAccess(this);
    }
    return orElse();
  }
}

abstract class NoAdminAccess implements ImageUploadFailure {
  const factory NoAdminAccess({required final String message}) =
      _$NoAdminAccess;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$NoAdminAccessCopyWith<_$NoAdminAccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkFailureCopyWith<$Res>
    implements $ImageUploadFailureCopyWith<$Res> {
  factory _$$NetworkFailureCopyWith(
          _$NetworkFailure value, $Res Function(_$NetworkFailure) then) =
      __$$NetworkFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$NetworkFailureCopyWithImpl<$Res>
    extends _$ImageUploadFailureCopyWithImpl<$Res>
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
    return 'ImageUploadFailure.networkFailure(message: $message)';
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
    required TResult Function(String message) invalidCredential,
    required TResult Function(String message) noAdminAccess,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) unknown,
  }) {
    return networkFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? invalidCredential,
    TResult Function(String message)? noAdminAccess,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? unknown,
  }) {
    return networkFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalidCredential,
    TResult Function(String message)? noAdminAccess,
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
    required TResult Function(InvalidCredentials value) invalidCredential,
    required TResult Function(NoAdminAccess value) noAdminAccess,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidCredentials value)? invalidCredential,
    TResult Function(NoAdminAccess value)? noAdminAccess,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(Unknown value)? unknown,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidCredentials value)? invalidCredential,
    TResult Function(NoAdminAccess value)? noAdminAccess,
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

abstract class NetworkFailure implements ImageUploadFailure {
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
abstract class _$$UnknownCopyWith<$Res>
    implements $ImageUploadFailureCopyWith<$Res> {
  factory _$$UnknownCopyWith(_$Unknown value, $Res Function(_$Unknown) then) =
      __$$UnknownCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$UnknownCopyWithImpl<$Res>
    extends _$ImageUploadFailureCopyWithImpl<$Res>
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
    return 'ImageUploadFailure.unknown(message: $message)';
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
    required TResult Function(String message) invalidCredential,
    required TResult Function(String message) noAdminAccess,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) unknown,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? invalidCredential,
    TResult Function(String message)? noAdminAccess,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalidCredential,
    TResult Function(String message)? noAdminAccess,
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
    required TResult Function(InvalidCredentials value) invalidCredential,
    required TResult Function(NoAdminAccess value) noAdminAccess,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidCredentials value)? invalidCredential,
    TResult Function(NoAdminAccess value)? noAdminAccess,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidCredentials value)? invalidCredential,
    TResult Function(NoAdminAccess value)? noAdminAccess,
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

abstract class Unknown implements ImageUploadFailure {
  const factory Unknown({required final String message}) = _$Unknown;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$UnknownCopyWith<_$Unknown> get copyWith =>
      throw _privateConstructorUsedError;
}
