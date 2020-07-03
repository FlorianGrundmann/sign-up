// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthFormEventTearOff {
  const _$AuthFormEventTearOff();

  RegisterWithEmailAndPassword registerWithEmailAndPasswordPressed() {
    return const RegisterWithEmailAndPassword();
  }

  LogInWithEmailAndPassword logInWithEmailAndPasswordPressed() {
    return const LogInWithEmailAndPassword();
  }
}

// ignore: unused_element
const $AuthFormEvent = _$AuthFormEventTearOff();

mixin _$AuthFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result logInWithEmailAndPasswordPressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerWithEmailAndPasswordPressed(),
    Result logInWithEmailAndPasswordPressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPassword value),
    @required
        Result logInWithEmailAndPasswordPressed(
            LogInWithEmailAndPassword value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPassword value),
    Result logInWithEmailAndPasswordPressed(LogInWithEmailAndPassword value),
    @required Result orElse(),
  });
}

abstract class $AuthFormEventCopyWith<$Res> {
  factory $AuthFormEventCopyWith(
          AuthFormEvent value, $Res Function(AuthFormEvent) then) =
      _$AuthFormEventCopyWithImpl<$Res>;
}

class _$AuthFormEventCopyWithImpl<$Res>
    implements $AuthFormEventCopyWith<$Res> {
  _$AuthFormEventCopyWithImpl(this._value, this._then);

  final AuthFormEvent _value;
  // ignore: unused_field
  final $Res Function(AuthFormEvent) _then;
}

abstract class $RegisterWithEmailAndPasswordCopyWith<$Res> {
  factory $RegisterWithEmailAndPasswordCopyWith(
          RegisterWithEmailAndPassword value,
          $Res Function(RegisterWithEmailAndPassword) then) =
      _$RegisterWithEmailAndPasswordCopyWithImpl<$Res>;
}

class _$RegisterWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res>
    implements $RegisterWithEmailAndPasswordCopyWith<$Res> {
  _$RegisterWithEmailAndPasswordCopyWithImpl(
      RegisterWithEmailAndPassword _value,
      $Res Function(RegisterWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as RegisterWithEmailAndPassword));

  @override
  RegisterWithEmailAndPassword get _value =>
      super._value as RegisterWithEmailAndPassword;
}

class _$RegisterWithEmailAndPassword implements RegisterWithEmailAndPassword {
  const _$RegisterWithEmailAndPassword();

  @override
  String toString() {
    return 'AuthFormEvent.registerWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RegisterWithEmailAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result logInWithEmailAndPasswordPressed(),
  }) {
    assert(registerWithEmailAndPasswordPressed != null);
    assert(logInWithEmailAndPasswordPressed != null);
    return registerWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerWithEmailAndPasswordPressed(),
    Result logInWithEmailAndPasswordPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPassword value),
    @required
        Result logInWithEmailAndPasswordPressed(
            LogInWithEmailAndPassword value),
  }) {
    assert(registerWithEmailAndPasswordPressed != null);
    assert(logInWithEmailAndPasswordPressed != null);
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPassword value),
    Result logInWithEmailAndPasswordPressed(LogInWithEmailAndPassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPassword implements AuthFormEvent {
  const factory RegisterWithEmailAndPassword() = _$RegisterWithEmailAndPassword;
}

abstract class $LogInWithEmailAndPasswordCopyWith<$Res> {
  factory $LogInWithEmailAndPasswordCopyWith(LogInWithEmailAndPassword value,
          $Res Function(LogInWithEmailAndPassword) then) =
      _$LogInWithEmailAndPasswordCopyWithImpl<$Res>;
}

class _$LogInWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res>
    implements $LogInWithEmailAndPasswordCopyWith<$Res> {
  _$LogInWithEmailAndPasswordCopyWithImpl(LogInWithEmailAndPassword _value,
      $Res Function(LogInWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as LogInWithEmailAndPassword));

  @override
  LogInWithEmailAndPassword get _value =>
      super._value as LogInWithEmailAndPassword;
}

class _$LogInWithEmailAndPassword implements LogInWithEmailAndPassword {
  const _$LogInWithEmailAndPassword();

  @override
  String toString() {
    return 'AuthFormEvent.logInWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LogInWithEmailAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result logInWithEmailAndPasswordPressed(),
  }) {
    assert(registerWithEmailAndPasswordPressed != null);
    assert(logInWithEmailAndPasswordPressed != null);
    return logInWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerWithEmailAndPasswordPressed(),
    Result logInWithEmailAndPasswordPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logInWithEmailAndPasswordPressed != null) {
      return logInWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPassword value),
    @required
        Result logInWithEmailAndPasswordPressed(
            LogInWithEmailAndPassword value),
  }) {
    assert(registerWithEmailAndPasswordPressed != null);
    assert(logInWithEmailAndPasswordPressed != null);
    return logInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPassword value),
    Result logInWithEmailAndPasswordPressed(LogInWithEmailAndPassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logInWithEmailAndPasswordPressed != null) {
      return logInWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class LogInWithEmailAndPassword implements AuthFormEvent {
  const factory LogInWithEmailAndPassword() = _$LogInWithEmailAndPassword;
}

class _$AuthFormStateTearOff {
  const _$AuthFormStateTearOff();

  _SignInFormState call(
      {@required String emailAddress,
      @required String password,
      String username}) {
    return _SignInFormState(
      emailAddress: emailAddress,
      password: password,
      username: username,
    );
  }
}

// ignore: unused_element
const $AuthFormState = _$AuthFormStateTearOff();

mixin _$AuthFormState {
  String get emailAddress;
  String get password;
  String get username;

  $AuthFormStateCopyWith<AuthFormState> get copyWith;
}

abstract class $AuthFormStateCopyWith<$Res> {
  factory $AuthFormStateCopyWith(
          AuthFormState value, $Res Function(AuthFormState) then) =
      _$AuthFormStateCopyWithImpl<$Res>;
  $Res call({String emailAddress, String password, String username});
}

class _$AuthFormStateCopyWithImpl<$Res>
    implements $AuthFormStateCopyWith<$Res> {
  _$AuthFormStateCopyWithImpl(this._value, this._then);

  final AuthFormState _value;
  // ignore: unused_field
  final $Res Function(AuthFormState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object username = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      password: password == freezed ? _value.password : password as String,
      username: username == freezed ? _value.username : username as String,
    ));
  }
}

abstract class _$SignInFormStateCopyWith<$Res>
    implements $AuthFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call({String emailAddress, String password, String username});
}

class __$SignInFormStateCopyWithImpl<$Res>
    extends _$AuthFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object username = freezed,
  }) {
    return _then(_SignInFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      password: password == freezed ? _value.password : password as String,
      username: username == freezed ? _value.username : username as String,
    ));
  }
}

class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {@required this.emailAddress, @required this.password, this.username})
      : assert(emailAddress != null),
        assert(password != null);

  @override
  final String emailAddress;
  @override
  final String password;
  @override
  final String username;

  @override
  String toString() {
    return 'AuthFormState(emailAddress: $emailAddress, password: $password, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(username);

  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements AuthFormState {
  const factory _SignInFormState(
      {@required String emailAddress,
      @required String password,
      String username}) = _$_SignInFormState;

  @override
  String get emailAddress;
  @override
  String get password;
  @override
  String get username;
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith;
}
