// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic usernameStr) usernameChanged,
    required TResult Function(dynamic passwordStr) passwordchanged,
    required TResult Function() loginwithusernameandpw,
    required TResult Function() setcountvalue,
    required TResult Function() returncount,
    required TResult Function(dynamic otpalue) oncompleteOTP,
    required TResult Function(dynamic otpalue) oneditingotp,
    required TResult Function() clearbloc,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic usernameStr)? usernameChanged,
    TResult? Function(dynamic passwordStr)? passwordchanged,
    TResult? Function()? loginwithusernameandpw,
    TResult? Function()? setcountvalue,
    TResult? Function()? returncount,
    TResult? Function(dynamic otpalue)? oncompleteOTP,
    TResult? Function(dynamic otpalue)? oneditingotp,
    TResult? Function()? clearbloc,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic usernameStr)? usernameChanged,
    TResult Function(dynamic passwordStr)? passwordchanged,
    TResult Function()? loginwithusernameandpw,
    TResult Function()? setcountvalue,
    TResult Function()? returncount,
    TResult Function(dynamic otpalue)? oncompleteOTP,
    TResult Function(dynamic otpalue)? oneditingotp,
    TResult Function()? clearbloc,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(Passwordchanged value) passwordchanged,
    required TResult Function(Loginwithusernameandpw value)
    loginwithusernameandpw,
    required TResult Function(Setcountvalue value) setcountvalue,
    required TResult Function(Returncount value) returncount,
    required TResult Function(OncompleteOTP value) oncompleteOTP,
    required TResult Function(OneditingOTP value) oneditingotp,
    required TResult Function(Clearbloc value) clearbloc,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(Passwordchanged value)? passwordchanged,
    TResult? Function(Loginwithusernameandpw value)? loginwithusernameandpw,
    TResult? Function(Setcountvalue value)? setcountvalue,
    TResult? Function(Returncount value)? returncount,
    TResult? Function(OncompleteOTP value)? oncompleteOTP,
    TResult? Function(OneditingOTP value)? oneditingotp,
    TResult? Function(Clearbloc value)? clearbloc,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(Passwordchanged value)? passwordchanged,
    TResult Function(Loginwithusernameandpw value)? loginwithusernameandpw,
    TResult Function(Setcountvalue value)? setcountvalue,
    TResult Function(Returncount value)? returncount,
    TResult Function(OncompleteOTP value)? oncompleteOTP,
    TResult Function(OneditingOTP value)? oneditingotp,
    TResult Function(Clearbloc value)? clearbloc,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UsernameChangedImplCopyWith<$Res> {
  factory _$$UsernameChangedImplCopyWith(
    _$UsernameChangedImpl value,
    $Res Function(_$UsernameChangedImpl) then,
  ) = __$$UsernameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic usernameStr});
}

/// @nodoc
class __$$UsernameChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UsernameChangedImpl>
    implements _$$UsernameChangedImplCopyWith<$Res> {
  __$$UsernameChangedImplCopyWithImpl(
    _$UsernameChangedImpl _value,
    $Res Function(_$UsernameChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? usernameStr = freezed}) {
    return _then(
      _$UsernameChangedImpl(
        freezed == usernameStr ? _value.usernameStr! : usernameStr,
      ),
    );
  }
}

/// @nodoc

class _$UsernameChangedImpl implements UsernameChanged {
  const _$UsernameChangedImpl(this.usernameStr);

  @override
  final dynamic usernameStr;

  @override
  String toString() {
    return 'AuthEvent.usernameChanged(usernameStr: $usernameStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsernameChangedImpl &&
            const DeepCollectionEquality().equals(
              other.usernameStr,
              usernameStr,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(usernameStr),
  );

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsernameChangedImplCopyWith<_$UsernameChangedImpl> get copyWith =>
      __$$UsernameChangedImplCopyWithImpl<_$UsernameChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic usernameStr) usernameChanged,
    required TResult Function(dynamic passwordStr) passwordchanged,
    required TResult Function() loginwithusernameandpw,
    required TResult Function() setcountvalue,
    required TResult Function() returncount,
    required TResult Function(dynamic otpalue) oncompleteOTP,
    required TResult Function(dynamic otpalue) oneditingotp,
    required TResult Function() clearbloc,
  }) {
    return usernameChanged(usernameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic usernameStr)? usernameChanged,
    TResult? Function(dynamic passwordStr)? passwordchanged,
    TResult? Function()? loginwithusernameandpw,
    TResult? Function()? setcountvalue,
    TResult? Function()? returncount,
    TResult? Function(dynamic otpalue)? oncompleteOTP,
    TResult? Function(dynamic otpalue)? oneditingotp,
    TResult? Function()? clearbloc,
  }) {
    return usernameChanged?.call(usernameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic usernameStr)? usernameChanged,
    TResult Function(dynamic passwordStr)? passwordchanged,
    TResult Function()? loginwithusernameandpw,
    TResult Function()? setcountvalue,
    TResult Function()? returncount,
    TResult Function(dynamic otpalue)? oncompleteOTP,
    TResult Function(dynamic otpalue)? oneditingotp,
    TResult Function()? clearbloc,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(usernameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(Passwordchanged value) passwordchanged,
    required TResult Function(Loginwithusernameandpw value)
    loginwithusernameandpw,
    required TResult Function(Setcountvalue value) setcountvalue,
    required TResult Function(Returncount value) returncount,
    required TResult Function(OncompleteOTP value) oncompleteOTP,
    required TResult Function(OneditingOTP value) oneditingotp,
    required TResult Function(Clearbloc value) clearbloc,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(Passwordchanged value)? passwordchanged,
    TResult? Function(Loginwithusernameandpw value)? loginwithusernameandpw,
    TResult? Function(Setcountvalue value)? setcountvalue,
    TResult? Function(Returncount value)? returncount,
    TResult? Function(OncompleteOTP value)? oncompleteOTP,
    TResult? Function(OneditingOTP value)? oneditingotp,
    TResult? Function(Clearbloc value)? clearbloc,
  }) {
    return usernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(Passwordchanged value)? passwordchanged,
    TResult Function(Loginwithusernameandpw value)? loginwithusernameandpw,
    TResult Function(Setcountvalue value)? setcountvalue,
    TResult Function(Returncount value)? returncount,
    TResult Function(OncompleteOTP value)? oncompleteOTP,
    TResult Function(OneditingOTP value)? oneditingotp,
    TResult Function(Clearbloc value)? clearbloc,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements AuthEvent {
  const factory UsernameChanged(final dynamic usernameStr) =
      _$UsernameChangedImpl;

  dynamic get usernameStr;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsernameChangedImplCopyWith<_$UsernameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordchangedImplCopyWith<$Res> {
  factory _$$PasswordchangedImplCopyWith(
    _$PasswordchangedImpl value,
    $Res Function(_$PasswordchangedImpl) then,
  ) = __$$PasswordchangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic passwordStr});
}

/// @nodoc
class __$$PasswordchangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$PasswordchangedImpl>
    implements _$$PasswordchangedImplCopyWith<$Res> {
  __$$PasswordchangedImplCopyWithImpl(
    _$PasswordchangedImpl _value,
    $Res Function(_$PasswordchangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? passwordStr = freezed}) {
    return _then(
      _$PasswordchangedImpl(
        freezed == passwordStr ? _value.passwordStr! : passwordStr,
      ),
    );
  }
}

/// @nodoc

class _$PasswordchangedImpl implements Passwordchanged {
  const _$PasswordchangedImpl(this.passwordStr);

  @override
  final dynamic passwordStr;

  @override
  String toString() {
    return 'AuthEvent.passwordchanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordchangedImpl &&
            const DeepCollectionEquality().equals(
              other.passwordStr,
              passwordStr,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(passwordStr),
  );

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordchangedImplCopyWith<_$PasswordchangedImpl> get copyWith =>
      __$$PasswordchangedImplCopyWithImpl<_$PasswordchangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic usernameStr) usernameChanged,
    required TResult Function(dynamic passwordStr) passwordchanged,
    required TResult Function() loginwithusernameandpw,
    required TResult Function() setcountvalue,
    required TResult Function() returncount,
    required TResult Function(dynamic otpalue) oncompleteOTP,
    required TResult Function(dynamic otpalue) oneditingotp,
    required TResult Function() clearbloc,
  }) {
    return passwordchanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic usernameStr)? usernameChanged,
    TResult? Function(dynamic passwordStr)? passwordchanged,
    TResult? Function()? loginwithusernameandpw,
    TResult? Function()? setcountvalue,
    TResult? Function()? returncount,
    TResult? Function(dynamic otpalue)? oncompleteOTP,
    TResult? Function(dynamic otpalue)? oneditingotp,
    TResult? Function()? clearbloc,
  }) {
    return passwordchanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic usernameStr)? usernameChanged,
    TResult Function(dynamic passwordStr)? passwordchanged,
    TResult Function()? loginwithusernameandpw,
    TResult Function()? setcountvalue,
    TResult Function()? returncount,
    TResult Function(dynamic otpalue)? oncompleteOTP,
    TResult Function(dynamic otpalue)? oneditingotp,
    TResult Function()? clearbloc,
    required TResult orElse(),
  }) {
    if (passwordchanged != null) {
      return passwordchanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(Passwordchanged value) passwordchanged,
    required TResult Function(Loginwithusernameandpw value)
    loginwithusernameandpw,
    required TResult Function(Setcountvalue value) setcountvalue,
    required TResult Function(Returncount value) returncount,
    required TResult Function(OncompleteOTP value) oncompleteOTP,
    required TResult Function(OneditingOTP value) oneditingotp,
    required TResult Function(Clearbloc value) clearbloc,
  }) {
    return passwordchanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(Passwordchanged value)? passwordchanged,
    TResult? Function(Loginwithusernameandpw value)? loginwithusernameandpw,
    TResult? Function(Setcountvalue value)? setcountvalue,
    TResult? Function(Returncount value)? returncount,
    TResult? Function(OncompleteOTP value)? oncompleteOTP,
    TResult? Function(OneditingOTP value)? oneditingotp,
    TResult? Function(Clearbloc value)? clearbloc,
  }) {
    return passwordchanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(Passwordchanged value)? passwordchanged,
    TResult Function(Loginwithusernameandpw value)? loginwithusernameandpw,
    TResult Function(Setcountvalue value)? setcountvalue,
    TResult Function(Returncount value)? returncount,
    TResult Function(OncompleteOTP value)? oncompleteOTP,
    TResult Function(OneditingOTP value)? oneditingotp,
    TResult Function(Clearbloc value)? clearbloc,
    required TResult orElse(),
  }) {
    if (passwordchanged != null) {
      return passwordchanged(this);
    }
    return orElse();
  }
}

abstract class Passwordchanged implements AuthEvent {
  const factory Passwordchanged(final dynamic passwordStr) =
      _$PasswordchangedImpl;

  dynamic get passwordStr;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordchangedImplCopyWith<_$PasswordchangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginwithusernameandpwImplCopyWith<$Res> {
  factory _$$LoginwithusernameandpwImplCopyWith(
    _$LoginwithusernameandpwImpl value,
    $Res Function(_$LoginwithusernameandpwImpl) then,
  ) = __$$LoginwithusernameandpwImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginwithusernameandpwImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginwithusernameandpwImpl>
    implements _$$LoginwithusernameandpwImplCopyWith<$Res> {
  __$$LoginwithusernameandpwImplCopyWithImpl(
    _$LoginwithusernameandpwImpl _value,
    $Res Function(_$LoginwithusernameandpwImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginwithusernameandpwImpl implements Loginwithusernameandpw {
  const _$LoginwithusernameandpwImpl();

  @override
  String toString() {
    return 'AuthEvent.loginwithusernameandpw()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginwithusernameandpwImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic usernameStr) usernameChanged,
    required TResult Function(dynamic passwordStr) passwordchanged,
    required TResult Function() loginwithusernameandpw,
    required TResult Function() setcountvalue,
    required TResult Function() returncount,
    required TResult Function(dynamic otpalue) oncompleteOTP,
    required TResult Function(dynamic otpalue) oneditingotp,
    required TResult Function() clearbloc,
  }) {
    return loginwithusernameandpw();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic usernameStr)? usernameChanged,
    TResult? Function(dynamic passwordStr)? passwordchanged,
    TResult? Function()? loginwithusernameandpw,
    TResult? Function()? setcountvalue,
    TResult? Function()? returncount,
    TResult? Function(dynamic otpalue)? oncompleteOTP,
    TResult? Function(dynamic otpalue)? oneditingotp,
    TResult? Function()? clearbloc,
  }) {
    return loginwithusernameandpw?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic usernameStr)? usernameChanged,
    TResult Function(dynamic passwordStr)? passwordchanged,
    TResult Function()? loginwithusernameandpw,
    TResult Function()? setcountvalue,
    TResult Function()? returncount,
    TResult Function(dynamic otpalue)? oncompleteOTP,
    TResult Function(dynamic otpalue)? oneditingotp,
    TResult Function()? clearbloc,
    required TResult orElse(),
  }) {
    if (loginwithusernameandpw != null) {
      return loginwithusernameandpw();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(Passwordchanged value) passwordchanged,
    required TResult Function(Loginwithusernameandpw value)
    loginwithusernameandpw,
    required TResult Function(Setcountvalue value) setcountvalue,
    required TResult Function(Returncount value) returncount,
    required TResult Function(OncompleteOTP value) oncompleteOTP,
    required TResult Function(OneditingOTP value) oneditingotp,
    required TResult Function(Clearbloc value) clearbloc,
  }) {
    return loginwithusernameandpw(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(Passwordchanged value)? passwordchanged,
    TResult? Function(Loginwithusernameandpw value)? loginwithusernameandpw,
    TResult? Function(Setcountvalue value)? setcountvalue,
    TResult? Function(Returncount value)? returncount,
    TResult? Function(OncompleteOTP value)? oncompleteOTP,
    TResult? Function(OneditingOTP value)? oneditingotp,
    TResult? Function(Clearbloc value)? clearbloc,
  }) {
    return loginwithusernameandpw?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(Passwordchanged value)? passwordchanged,
    TResult Function(Loginwithusernameandpw value)? loginwithusernameandpw,
    TResult Function(Setcountvalue value)? setcountvalue,
    TResult Function(Returncount value)? returncount,
    TResult Function(OncompleteOTP value)? oncompleteOTP,
    TResult Function(OneditingOTP value)? oneditingotp,
    TResult Function(Clearbloc value)? clearbloc,
    required TResult orElse(),
  }) {
    if (loginwithusernameandpw != null) {
      return loginwithusernameandpw(this);
    }
    return orElse();
  }
}

abstract class Loginwithusernameandpw implements AuthEvent {
  const factory Loginwithusernameandpw() = _$LoginwithusernameandpwImpl;
}

/// @nodoc
abstract class _$$SetcountvalueImplCopyWith<$Res> {
  factory _$$SetcountvalueImplCopyWith(
    _$SetcountvalueImpl value,
    $Res Function(_$SetcountvalueImpl) then,
  ) = __$$SetcountvalueImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetcountvalueImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SetcountvalueImpl>
    implements _$$SetcountvalueImplCopyWith<$Res> {
  __$$SetcountvalueImplCopyWithImpl(
    _$SetcountvalueImpl _value,
    $Res Function(_$SetcountvalueImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SetcountvalueImpl implements Setcountvalue {
  const _$SetcountvalueImpl();

  @override
  String toString() {
    return 'AuthEvent.setcountvalue()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetcountvalueImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic usernameStr) usernameChanged,
    required TResult Function(dynamic passwordStr) passwordchanged,
    required TResult Function() loginwithusernameandpw,
    required TResult Function() setcountvalue,
    required TResult Function() returncount,
    required TResult Function(dynamic otpalue) oncompleteOTP,
    required TResult Function(dynamic otpalue) oneditingotp,
    required TResult Function() clearbloc,
  }) {
    return setcountvalue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic usernameStr)? usernameChanged,
    TResult? Function(dynamic passwordStr)? passwordchanged,
    TResult? Function()? loginwithusernameandpw,
    TResult? Function()? setcountvalue,
    TResult? Function()? returncount,
    TResult? Function(dynamic otpalue)? oncompleteOTP,
    TResult? Function(dynamic otpalue)? oneditingotp,
    TResult? Function()? clearbloc,
  }) {
    return setcountvalue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic usernameStr)? usernameChanged,
    TResult Function(dynamic passwordStr)? passwordchanged,
    TResult Function()? loginwithusernameandpw,
    TResult Function()? setcountvalue,
    TResult Function()? returncount,
    TResult Function(dynamic otpalue)? oncompleteOTP,
    TResult Function(dynamic otpalue)? oneditingotp,
    TResult Function()? clearbloc,
    required TResult orElse(),
  }) {
    if (setcountvalue != null) {
      return setcountvalue();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(Passwordchanged value) passwordchanged,
    required TResult Function(Loginwithusernameandpw value)
    loginwithusernameandpw,
    required TResult Function(Setcountvalue value) setcountvalue,
    required TResult Function(Returncount value) returncount,
    required TResult Function(OncompleteOTP value) oncompleteOTP,
    required TResult Function(OneditingOTP value) oneditingotp,
    required TResult Function(Clearbloc value) clearbloc,
  }) {
    return setcountvalue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(Passwordchanged value)? passwordchanged,
    TResult? Function(Loginwithusernameandpw value)? loginwithusernameandpw,
    TResult? Function(Setcountvalue value)? setcountvalue,
    TResult? Function(Returncount value)? returncount,
    TResult? Function(OncompleteOTP value)? oncompleteOTP,
    TResult? Function(OneditingOTP value)? oneditingotp,
    TResult? Function(Clearbloc value)? clearbloc,
  }) {
    return setcountvalue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(Passwordchanged value)? passwordchanged,
    TResult Function(Loginwithusernameandpw value)? loginwithusernameandpw,
    TResult Function(Setcountvalue value)? setcountvalue,
    TResult Function(Returncount value)? returncount,
    TResult Function(OncompleteOTP value)? oncompleteOTP,
    TResult Function(OneditingOTP value)? oneditingotp,
    TResult Function(Clearbloc value)? clearbloc,
    required TResult orElse(),
  }) {
    if (setcountvalue != null) {
      return setcountvalue(this);
    }
    return orElse();
  }
}

abstract class Setcountvalue implements AuthEvent {
  const factory Setcountvalue() = _$SetcountvalueImpl;
}

/// @nodoc
abstract class _$$ReturncountImplCopyWith<$Res> {
  factory _$$ReturncountImplCopyWith(
    _$ReturncountImpl value,
    $Res Function(_$ReturncountImpl) then,
  ) = __$$ReturncountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReturncountImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ReturncountImpl>
    implements _$$ReturncountImplCopyWith<$Res> {
  __$$ReturncountImplCopyWithImpl(
    _$ReturncountImpl _value,
    $Res Function(_$ReturncountImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ReturncountImpl implements Returncount {
  const _$ReturncountImpl();

  @override
  String toString() {
    return 'AuthEvent.returncount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReturncountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic usernameStr) usernameChanged,
    required TResult Function(dynamic passwordStr) passwordchanged,
    required TResult Function() loginwithusernameandpw,
    required TResult Function() setcountvalue,
    required TResult Function() returncount,
    required TResult Function(dynamic otpalue) oncompleteOTP,
    required TResult Function(dynamic otpalue) oneditingotp,
    required TResult Function() clearbloc,
  }) {
    return returncount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic usernameStr)? usernameChanged,
    TResult? Function(dynamic passwordStr)? passwordchanged,
    TResult? Function()? loginwithusernameandpw,
    TResult? Function()? setcountvalue,
    TResult? Function()? returncount,
    TResult? Function(dynamic otpalue)? oncompleteOTP,
    TResult? Function(dynamic otpalue)? oneditingotp,
    TResult? Function()? clearbloc,
  }) {
    return returncount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic usernameStr)? usernameChanged,
    TResult Function(dynamic passwordStr)? passwordchanged,
    TResult Function()? loginwithusernameandpw,
    TResult Function()? setcountvalue,
    TResult Function()? returncount,
    TResult Function(dynamic otpalue)? oncompleteOTP,
    TResult Function(dynamic otpalue)? oneditingotp,
    TResult Function()? clearbloc,
    required TResult orElse(),
  }) {
    if (returncount != null) {
      return returncount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(Passwordchanged value) passwordchanged,
    required TResult Function(Loginwithusernameandpw value)
    loginwithusernameandpw,
    required TResult Function(Setcountvalue value) setcountvalue,
    required TResult Function(Returncount value) returncount,
    required TResult Function(OncompleteOTP value) oncompleteOTP,
    required TResult Function(OneditingOTP value) oneditingotp,
    required TResult Function(Clearbloc value) clearbloc,
  }) {
    return returncount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(Passwordchanged value)? passwordchanged,
    TResult? Function(Loginwithusernameandpw value)? loginwithusernameandpw,
    TResult? Function(Setcountvalue value)? setcountvalue,
    TResult? Function(Returncount value)? returncount,
    TResult? Function(OncompleteOTP value)? oncompleteOTP,
    TResult? Function(OneditingOTP value)? oneditingotp,
    TResult? Function(Clearbloc value)? clearbloc,
  }) {
    return returncount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(Passwordchanged value)? passwordchanged,
    TResult Function(Loginwithusernameandpw value)? loginwithusernameandpw,
    TResult Function(Setcountvalue value)? setcountvalue,
    TResult Function(Returncount value)? returncount,
    TResult Function(OncompleteOTP value)? oncompleteOTP,
    TResult Function(OneditingOTP value)? oneditingotp,
    TResult Function(Clearbloc value)? clearbloc,
    required TResult orElse(),
  }) {
    if (returncount != null) {
      return returncount(this);
    }
    return orElse();
  }
}

abstract class Returncount implements AuthEvent {
  const factory Returncount() = _$ReturncountImpl;
}

/// @nodoc
abstract class _$$OncompleteOTPImplCopyWith<$Res> {
  factory _$$OncompleteOTPImplCopyWith(
    _$OncompleteOTPImpl value,
    $Res Function(_$OncompleteOTPImpl) then,
  ) = __$$OncompleteOTPImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic otpalue});
}

/// @nodoc
class __$$OncompleteOTPImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OncompleteOTPImpl>
    implements _$$OncompleteOTPImplCopyWith<$Res> {
  __$$OncompleteOTPImplCopyWithImpl(
    _$OncompleteOTPImpl _value,
    $Res Function(_$OncompleteOTPImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? otpalue = freezed}) {
    return _then(
      _$OncompleteOTPImpl(freezed == otpalue ? _value.otpalue! : otpalue),
    );
  }
}

/// @nodoc

class _$OncompleteOTPImpl implements OncompleteOTP {
  const _$OncompleteOTPImpl(this.otpalue);

  @override
  final dynamic otpalue;

  @override
  String toString() {
    return 'AuthEvent.oncompleteOTP(otpalue: $otpalue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OncompleteOTPImpl &&
            const DeepCollectionEquality().equals(other.otpalue, otpalue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(otpalue));

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OncompleteOTPImplCopyWith<_$OncompleteOTPImpl> get copyWith =>
      __$$OncompleteOTPImplCopyWithImpl<_$OncompleteOTPImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic usernameStr) usernameChanged,
    required TResult Function(dynamic passwordStr) passwordchanged,
    required TResult Function() loginwithusernameandpw,
    required TResult Function() setcountvalue,
    required TResult Function() returncount,
    required TResult Function(dynamic otpalue) oncompleteOTP,
    required TResult Function(dynamic otpalue) oneditingotp,
    required TResult Function() clearbloc,
  }) {
    return oncompleteOTP(otpalue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic usernameStr)? usernameChanged,
    TResult? Function(dynamic passwordStr)? passwordchanged,
    TResult? Function()? loginwithusernameandpw,
    TResult? Function()? setcountvalue,
    TResult? Function()? returncount,
    TResult? Function(dynamic otpalue)? oncompleteOTP,
    TResult? Function(dynamic otpalue)? oneditingotp,
    TResult? Function()? clearbloc,
  }) {
    return oncompleteOTP?.call(otpalue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic usernameStr)? usernameChanged,
    TResult Function(dynamic passwordStr)? passwordchanged,
    TResult Function()? loginwithusernameandpw,
    TResult Function()? setcountvalue,
    TResult Function()? returncount,
    TResult Function(dynamic otpalue)? oncompleteOTP,
    TResult Function(dynamic otpalue)? oneditingotp,
    TResult Function()? clearbloc,
    required TResult orElse(),
  }) {
    if (oncompleteOTP != null) {
      return oncompleteOTP(otpalue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(Passwordchanged value) passwordchanged,
    required TResult Function(Loginwithusernameandpw value)
    loginwithusernameandpw,
    required TResult Function(Setcountvalue value) setcountvalue,
    required TResult Function(Returncount value) returncount,
    required TResult Function(OncompleteOTP value) oncompleteOTP,
    required TResult Function(OneditingOTP value) oneditingotp,
    required TResult Function(Clearbloc value) clearbloc,
  }) {
    return oncompleteOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(Passwordchanged value)? passwordchanged,
    TResult? Function(Loginwithusernameandpw value)? loginwithusernameandpw,
    TResult? Function(Setcountvalue value)? setcountvalue,
    TResult? Function(Returncount value)? returncount,
    TResult? Function(OncompleteOTP value)? oncompleteOTP,
    TResult? Function(OneditingOTP value)? oneditingotp,
    TResult? Function(Clearbloc value)? clearbloc,
  }) {
    return oncompleteOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(Passwordchanged value)? passwordchanged,
    TResult Function(Loginwithusernameandpw value)? loginwithusernameandpw,
    TResult Function(Setcountvalue value)? setcountvalue,
    TResult Function(Returncount value)? returncount,
    TResult Function(OncompleteOTP value)? oncompleteOTP,
    TResult Function(OneditingOTP value)? oneditingotp,
    TResult Function(Clearbloc value)? clearbloc,
    required TResult orElse(),
  }) {
    if (oncompleteOTP != null) {
      return oncompleteOTP(this);
    }
    return orElse();
  }
}

abstract class OncompleteOTP implements AuthEvent {
  const factory OncompleteOTP(final dynamic otpalue) = _$OncompleteOTPImpl;

  dynamic get otpalue;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OncompleteOTPImplCopyWith<_$OncompleteOTPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OneditingOTPImplCopyWith<$Res> {
  factory _$$OneditingOTPImplCopyWith(
    _$OneditingOTPImpl value,
    $Res Function(_$OneditingOTPImpl) then,
  ) = __$$OneditingOTPImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic otpalue});
}

/// @nodoc
class __$$OneditingOTPImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OneditingOTPImpl>
    implements _$$OneditingOTPImplCopyWith<$Res> {
  __$$OneditingOTPImplCopyWithImpl(
    _$OneditingOTPImpl _value,
    $Res Function(_$OneditingOTPImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? otpalue = freezed}) {
    return _then(
      _$OneditingOTPImpl(freezed == otpalue ? _value.otpalue! : otpalue),
    );
  }
}

/// @nodoc

class _$OneditingOTPImpl implements OneditingOTP {
  const _$OneditingOTPImpl(this.otpalue);

  @override
  final dynamic otpalue;

  @override
  String toString() {
    return 'AuthEvent.oneditingotp(otpalue: $otpalue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OneditingOTPImpl &&
            const DeepCollectionEquality().equals(other.otpalue, otpalue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(otpalue));

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OneditingOTPImplCopyWith<_$OneditingOTPImpl> get copyWith =>
      __$$OneditingOTPImplCopyWithImpl<_$OneditingOTPImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic usernameStr) usernameChanged,
    required TResult Function(dynamic passwordStr) passwordchanged,
    required TResult Function() loginwithusernameandpw,
    required TResult Function() setcountvalue,
    required TResult Function() returncount,
    required TResult Function(dynamic otpalue) oncompleteOTP,
    required TResult Function(dynamic otpalue) oneditingotp,
    required TResult Function() clearbloc,
  }) {
    return oneditingotp(otpalue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic usernameStr)? usernameChanged,
    TResult? Function(dynamic passwordStr)? passwordchanged,
    TResult? Function()? loginwithusernameandpw,
    TResult? Function()? setcountvalue,
    TResult? Function()? returncount,
    TResult? Function(dynamic otpalue)? oncompleteOTP,
    TResult? Function(dynamic otpalue)? oneditingotp,
    TResult? Function()? clearbloc,
  }) {
    return oneditingotp?.call(otpalue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic usernameStr)? usernameChanged,
    TResult Function(dynamic passwordStr)? passwordchanged,
    TResult Function()? loginwithusernameandpw,
    TResult Function()? setcountvalue,
    TResult Function()? returncount,
    TResult Function(dynamic otpalue)? oncompleteOTP,
    TResult Function(dynamic otpalue)? oneditingotp,
    TResult Function()? clearbloc,
    required TResult orElse(),
  }) {
    if (oneditingotp != null) {
      return oneditingotp(otpalue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(Passwordchanged value) passwordchanged,
    required TResult Function(Loginwithusernameandpw value)
    loginwithusernameandpw,
    required TResult Function(Setcountvalue value) setcountvalue,
    required TResult Function(Returncount value) returncount,
    required TResult Function(OncompleteOTP value) oncompleteOTP,
    required TResult Function(OneditingOTP value) oneditingotp,
    required TResult Function(Clearbloc value) clearbloc,
  }) {
    return oneditingotp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(Passwordchanged value)? passwordchanged,
    TResult? Function(Loginwithusernameandpw value)? loginwithusernameandpw,
    TResult? Function(Setcountvalue value)? setcountvalue,
    TResult? Function(Returncount value)? returncount,
    TResult? Function(OncompleteOTP value)? oncompleteOTP,
    TResult? Function(OneditingOTP value)? oneditingotp,
    TResult? Function(Clearbloc value)? clearbloc,
  }) {
    return oneditingotp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(Passwordchanged value)? passwordchanged,
    TResult Function(Loginwithusernameandpw value)? loginwithusernameandpw,
    TResult Function(Setcountvalue value)? setcountvalue,
    TResult Function(Returncount value)? returncount,
    TResult Function(OncompleteOTP value)? oncompleteOTP,
    TResult Function(OneditingOTP value)? oneditingotp,
    TResult Function(Clearbloc value)? clearbloc,
    required TResult orElse(),
  }) {
    if (oneditingotp != null) {
      return oneditingotp(this);
    }
    return orElse();
  }
}

abstract class OneditingOTP implements AuthEvent {
  const factory OneditingOTP(final dynamic otpalue) = _$OneditingOTPImpl;

  dynamic get otpalue;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OneditingOTPImplCopyWith<_$OneditingOTPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearblocImplCopyWith<$Res> {
  factory _$$ClearblocImplCopyWith(
    _$ClearblocImpl value,
    $Res Function(_$ClearblocImpl) then,
  ) = __$$ClearblocImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearblocImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ClearblocImpl>
    implements _$$ClearblocImplCopyWith<$Res> {
  __$$ClearblocImplCopyWithImpl(
    _$ClearblocImpl _value,
    $Res Function(_$ClearblocImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearblocImpl implements Clearbloc {
  const _$ClearblocImpl();

  @override
  String toString() {
    return 'AuthEvent.clearbloc()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearblocImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic usernameStr) usernameChanged,
    required TResult Function(dynamic passwordStr) passwordchanged,
    required TResult Function() loginwithusernameandpw,
    required TResult Function() setcountvalue,
    required TResult Function() returncount,
    required TResult Function(dynamic otpalue) oncompleteOTP,
    required TResult Function(dynamic otpalue) oneditingotp,
    required TResult Function() clearbloc,
  }) {
    return clearbloc();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic usernameStr)? usernameChanged,
    TResult? Function(dynamic passwordStr)? passwordchanged,
    TResult? Function()? loginwithusernameandpw,
    TResult? Function()? setcountvalue,
    TResult? Function()? returncount,
    TResult? Function(dynamic otpalue)? oncompleteOTP,
    TResult? Function(dynamic otpalue)? oneditingotp,
    TResult? Function()? clearbloc,
  }) {
    return clearbloc?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic usernameStr)? usernameChanged,
    TResult Function(dynamic passwordStr)? passwordchanged,
    TResult Function()? loginwithusernameandpw,
    TResult Function()? setcountvalue,
    TResult Function()? returncount,
    TResult Function(dynamic otpalue)? oncompleteOTP,
    TResult Function(dynamic otpalue)? oneditingotp,
    TResult Function()? clearbloc,
    required TResult orElse(),
  }) {
    if (clearbloc != null) {
      return clearbloc();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(Passwordchanged value) passwordchanged,
    required TResult Function(Loginwithusernameandpw value)
    loginwithusernameandpw,
    required TResult Function(Setcountvalue value) setcountvalue,
    required TResult Function(Returncount value) returncount,
    required TResult Function(OncompleteOTP value) oncompleteOTP,
    required TResult Function(OneditingOTP value) oneditingotp,
    required TResult Function(Clearbloc value) clearbloc,
  }) {
    return clearbloc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(Passwordchanged value)? passwordchanged,
    TResult? Function(Loginwithusernameandpw value)? loginwithusernameandpw,
    TResult? Function(Setcountvalue value)? setcountvalue,
    TResult? Function(Returncount value)? returncount,
    TResult? Function(OncompleteOTP value)? oncompleteOTP,
    TResult? Function(OneditingOTP value)? oneditingotp,
    TResult? Function(Clearbloc value)? clearbloc,
  }) {
    return clearbloc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(Passwordchanged value)? passwordchanged,
    TResult Function(Loginwithusernameandpw value)? loginwithusernameandpw,
    TResult Function(Setcountvalue value)? setcountvalue,
    TResult Function(Returncount value)? returncount,
    TResult Function(OncompleteOTP value)? oncompleteOTP,
    TResult Function(OneditingOTP value)? oneditingotp,
    TResult Function(Clearbloc value)? clearbloc,
    required TResult orElse(),
  }) {
    if (clearbloc != null) {
      return clearbloc(this);
    }
    return orElse();
  }
}

abstract class Clearbloc implements AuthEvent {
  const factory Clearbloc() = _$ClearblocImpl;
}

/// @nodoc
mixin _$AuthState {
  bool? get isloading => throw _privateConstructorUsedError;
  Username? get username => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, LoginResponse>>? get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool? get showErrorMessages => throw _privateConstructorUsedError;
  Password? get password => throw _privateConstructorUsedError;
  bool? get isSubmitting => throw _privateConstructorUsedError;
  LoginResponse? get loginResponsedata => throw _privateConstructorUsedError;
  bool? get isloginsuccess => throw _privateConstructorUsedError;
  bool? get gottootpscreen => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  String? get codeOTP => throw _privateConstructorUsedError;
  bool? get oneditingotp => throw _privateConstructorUsedError;
  bool? get isloadingresentotp => throw _privateConstructorUsedError;
  bool get isacceptotploading => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({
    bool? isloading,
    Username? username,
    Option<Either<AuthFailure, LoginResponse>>? authFailureOrSuccessOption,
    bool? showErrorMessages,
    Password? password,
    bool? isSubmitting,
    LoginResponse? loginResponsedata,
    bool? isloginsuccess,
    bool? gottootpscreen,
    int? count,
    String? codeOTP,
    bool? oneditingotp,
    bool? isloadingresentotp,
    bool isacceptotploading,
  });

  $LoginResponseCopyWith<$Res>? get loginResponsedata;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = freezed,
    Object? username = freezed,
    Object? authFailureOrSuccessOption = freezed,
    Object? showErrorMessages = freezed,
    Object? password = freezed,
    Object? isSubmitting = freezed,
    Object? loginResponsedata = freezed,
    Object? isloginsuccess = freezed,
    Object? gottootpscreen = freezed,
    Object? count = freezed,
    Object? codeOTP = freezed,
    Object? oneditingotp = freezed,
    Object? isloadingresentotp = freezed,
    Object? isacceptotploading = null,
  }) {
    return _then(
      _value.copyWith(
            isloading: freezed == isloading
                ? _value.isloading
                : isloading // ignore: cast_nullable_to_non_nullable
                      as bool?,
            username: freezed == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                      as Username?,
            authFailureOrSuccessOption: freezed == authFailureOrSuccessOption
                ? _value.authFailureOrSuccessOption
                : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
                      as Option<Either<AuthFailure, LoginResponse>>?,
            showErrorMessages: freezed == showErrorMessages
                ? _value.showErrorMessages
                : showErrorMessages // ignore: cast_nullable_to_non_nullable
                      as bool?,
            password: freezed == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as Password?,
            isSubmitting: freezed == isSubmitting
                ? _value.isSubmitting
                : isSubmitting // ignore: cast_nullable_to_non_nullable
                      as bool?,
            loginResponsedata: freezed == loginResponsedata
                ? _value.loginResponsedata
                : loginResponsedata // ignore: cast_nullable_to_non_nullable
                      as LoginResponse?,
            isloginsuccess: freezed == isloginsuccess
                ? _value.isloginsuccess
                : isloginsuccess // ignore: cast_nullable_to_non_nullable
                      as bool?,
            gottootpscreen: freezed == gottootpscreen
                ? _value.gottootpscreen
                : gottootpscreen // ignore: cast_nullable_to_non_nullable
                      as bool?,
            count: freezed == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int?,
            codeOTP: freezed == codeOTP
                ? _value.codeOTP
                : codeOTP // ignore: cast_nullable_to_non_nullable
                      as String?,
            oneditingotp: freezed == oneditingotp
                ? _value.oneditingotp
                : oneditingotp // ignore: cast_nullable_to_non_nullable
                      as bool?,
            isloadingresentotp: freezed == isloadingresentotp
                ? _value.isloadingresentotp
                : isloadingresentotp // ignore: cast_nullable_to_non_nullable
                      as bool?,
            isacceptotploading: null == isacceptotploading
                ? _value.isacceptotploading
                : isacceptotploading // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginResponseCopyWith<$Res>? get loginResponsedata {
    if (_value.loginResponsedata == null) {
      return null;
    }

    return $LoginResponseCopyWith<$Res>(_value.loginResponsedata!, (value) {
      return _then(_value.copyWith(loginResponsedata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
    _$AuthStateImpl value,
    $Res Function(_$AuthStateImpl) then,
  ) = __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool? isloading,
    Username? username,
    Option<Either<AuthFailure, LoginResponse>>? authFailureOrSuccessOption,
    bool? showErrorMessages,
    Password? password,
    bool? isSubmitting,
    LoginResponse? loginResponsedata,
    bool? isloginsuccess,
    bool? gottootpscreen,
    int? count,
    String? codeOTP,
    bool? oneditingotp,
    bool? isloadingresentotp,
    bool isacceptotploading,
  });

  @override
  $LoginResponseCopyWith<$Res>? get loginResponsedata;
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
    _$AuthStateImpl _value,
    $Res Function(_$AuthStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = freezed,
    Object? username = freezed,
    Object? authFailureOrSuccessOption = freezed,
    Object? showErrorMessages = freezed,
    Object? password = freezed,
    Object? isSubmitting = freezed,
    Object? loginResponsedata = freezed,
    Object? isloginsuccess = freezed,
    Object? gottootpscreen = freezed,
    Object? count = freezed,
    Object? codeOTP = freezed,
    Object? oneditingotp = freezed,
    Object? isloadingresentotp = freezed,
    Object? isacceptotploading = null,
  }) {
    return _then(
      _$AuthStateImpl(
        isloading: freezed == isloading
            ? _value.isloading
            : isloading // ignore: cast_nullable_to_non_nullable
                  as bool?,
        username: freezed == username
            ? _value.username
            : username // ignore: cast_nullable_to_non_nullable
                  as Username?,
        authFailureOrSuccessOption: freezed == authFailureOrSuccessOption
            ? _value.authFailureOrSuccessOption
            : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
                  as Option<Either<AuthFailure, LoginResponse>>?,
        showErrorMessages: freezed == showErrorMessages
            ? _value.showErrorMessages
            : showErrorMessages // ignore: cast_nullable_to_non_nullable
                  as bool?,
        password: freezed == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as Password?,
        isSubmitting: freezed == isSubmitting
            ? _value.isSubmitting
            : isSubmitting // ignore: cast_nullable_to_non_nullable
                  as bool?,
        loginResponsedata: freezed == loginResponsedata
            ? _value.loginResponsedata
            : loginResponsedata // ignore: cast_nullable_to_non_nullable
                  as LoginResponse?,
        isloginsuccess: freezed == isloginsuccess
            ? _value.isloginsuccess
            : isloginsuccess // ignore: cast_nullable_to_non_nullable
                  as bool?,
        gottootpscreen: freezed == gottootpscreen
            ? _value.gottootpscreen
            : gottootpscreen // ignore: cast_nullable_to_non_nullable
                  as bool?,
        count: freezed == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int?,
        codeOTP: freezed == codeOTP
            ? _value.codeOTP
            : codeOTP // ignore: cast_nullable_to_non_nullable
                  as String?,
        oneditingotp: freezed == oneditingotp
            ? _value.oneditingotp
            : oneditingotp // ignore: cast_nullable_to_non_nullable
                  as bool?,
        isloadingresentotp: freezed == isloadingresentotp
            ? _value.isloadingresentotp
            : isloadingresentotp // ignore: cast_nullable_to_non_nullable
                  as bool?,
        isacceptotploading: null == isacceptotploading
            ? _value.isacceptotploading
            : isacceptotploading // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  _$AuthStateImpl({
    required this.isloading,
    this.username,
    this.authFailureOrSuccessOption,
    this.showErrorMessages,
    this.password,
    required this.isSubmitting,
    required this.loginResponsedata,
    required this.isloginsuccess,
    required this.gottootpscreen,
    required this.count,
    required this.codeOTP,
    required this.oneditingotp,
    required this.isloadingresentotp,
    required this.isacceptotploading,
  });

  @override
  final bool? isloading;
  @override
  final Username? username;
  @override
  final Option<Either<AuthFailure, LoginResponse>>? authFailureOrSuccessOption;
  @override
  final bool? showErrorMessages;
  @override
  final Password? password;
  @override
  final bool? isSubmitting;
  @override
  final LoginResponse? loginResponsedata;
  @override
  final bool? isloginsuccess;
  @override
  final bool? gottootpscreen;
  @override
  final int? count;
  @override
  final String? codeOTP;
  @override
  final bool? oneditingotp;
  @override
  final bool? isloadingresentotp;
  @override
  final bool isacceptotploading;

  @override
  String toString() {
    return 'AuthState(isloading: $isloading, username: $username, authFailureOrSuccessOption: $authFailureOrSuccessOption, showErrorMessages: $showErrorMessages, password: $password, isSubmitting: $isSubmitting, loginResponsedata: $loginResponsedata, isloginsuccess: $isloginsuccess, gottootpscreen: $gottootpscreen, count: $count, codeOTP: $codeOTP, oneditingotp: $oneditingotp, isloadingresentotp: $isloadingresentotp, isacceptotploading: $isacceptotploading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(
                  other.authFailureOrSuccessOption,
                  authFailureOrSuccessOption,
                ) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.loginResponsedata, loginResponsedata) ||
                other.loginResponsedata == loginResponsedata) &&
            (identical(other.isloginsuccess, isloginsuccess) ||
                other.isloginsuccess == isloginsuccess) &&
            (identical(other.gottootpscreen, gottootpscreen) ||
                other.gottootpscreen == gottootpscreen) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.codeOTP, codeOTP) || other.codeOTP == codeOTP) &&
            (identical(other.oneditingotp, oneditingotp) ||
                other.oneditingotp == oneditingotp) &&
            (identical(other.isloadingresentotp, isloadingresentotp) ||
                other.isloadingresentotp == isloadingresentotp) &&
            (identical(other.isacceptotploading, isacceptotploading) ||
                other.isacceptotploading == isacceptotploading));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isloading,
    username,
    authFailureOrSuccessOption,
    showErrorMessages,
    password,
    isSubmitting,
    loginResponsedata,
    isloginsuccess,
    gottootpscreen,
    count,
    codeOTP,
    oneditingotp,
    isloadingresentotp,
    isacceptotploading,
  );

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  factory _AuthState({
    required final bool? isloading,
    final Username? username,
    final Option<Either<AuthFailure, LoginResponse>>?
    authFailureOrSuccessOption,
    final bool? showErrorMessages,
    final Password? password,
    required final bool? isSubmitting,
    required final LoginResponse? loginResponsedata,
    required final bool? isloginsuccess,
    required final bool? gottootpscreen,
    required final int? count,
    required final String? codeOTP,
    required final bool? oneditingotp,
    required final bool? isloadingresentotp,
    required final bool isacceptotploading,
  }) = _$AuthStateImpl;

  @override
  bool? get isloading;
  @override
  Username? get username;
  @override
  Option<Either<AuthFailure, LoginResponse>>? get authFailureOrSuccessOption;
  @override
  bool? get showErrorMessages;
  @override
  Password? get password;
  @override
  bool? get isSubmitting;
  @override
  LoginResponse? get loginResponsedata;
  @override
  bool? get isloginsuccess;
  @override
  bool? get gottootpscreen;
  @override
  int? get count;
  @override
  String? get codeOTP;
  @override
  bool? get oneditingotp;
  @override
  bool? get isloadingresentotp;
  @override
  bool get isacceptotploading;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
