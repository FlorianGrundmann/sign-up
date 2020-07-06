// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthFormEventTearOff {
  const _$AuthFormEventTearOff();

  RegisterWithEmailAndPassword registerWithEmailAndPassword(
      {@required String email,
      @required String password,
      @required String username}) {
    return RegisterWithEmailAndPassword(
      email: email,
      password: password,
      username: username,
    );
  }

  LoginWithEmailAndPassword loginWithEmailAndPassword(
      {@required String password, @required String email}) {
    return LoginWithEmailAndPassword(
      password: password,
      email: email,
    );
  }
}

// ignore: unused_element
const $AuthFormEvent = _$AuthFormEventTearOff();

mixin _$AuthFormEvent {
  String get email;
  String get password;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result registerWithEmailAndPassword(
            String email, String password, String username),
    @required Result loginWithEmailAndPassword(String password, String email),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerWithEmailAndPassword(
        String email, String password, String username),
    Result loginWithEmailAndPassword(String password, String email),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    @required Result loginWithEmailAndPassword(LoginWithEmailAndPassword value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    Result loginWithEmailAndPassword(LoginWithEmailAndPassword value),
    @required Result orElse(),
  });

  $AuthFormEventCopyWith<AuthFormEvent> get copyWith;
}

abstract class $AuthFormEventCopyWith<$Res> {
  factory $AuthFormEventCopyWith(
          AuthFormEvent value, $Res Function(AuthFormEvent) then) =
      _$AuthFormEventCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

class _$AuthFormEventCopyWithImpl<$Res>
    implements $AuthFormEventCopyWith<$Res> {
  _$AuthFormEventCopyWithImpl(this._value, this._then);

  final AuthFormEvent _value;
  // ignore: unused_field
  final $Res Function(AuthFormEvent) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

abstract class $RegisterWithEmailAndPasswordCopyWith<$Res>
    implements $AuthFormEventCopyWith<$Res> {
  factory $RegisterWithEmailAndPasswordCopyWith(
          RegisterWithEmailAndPassword value,
          $Res Function(RegisterWithEmailAndPassword) then) =
      _$RegisterWithEmailAndPasswordCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password, String username});
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

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object username = freezed,
  }) {
    return _then(RegisterWithEmailAndPassword(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      username: username == freezed ? _value.username : username as String,
    ));
  }
}

class _$RegisterWithEmailAndPassword implements RegisterWithEmailAndPassword {
  const _$RegisterWithEmailAndPassword(
      {@required this.email, @required this.password, @required this.username})
      : assert(email != null),
        assert(password != null),
        assert(username != null);

  @override
  final String email;
  @override
  final String password;
  @override
  final String username;

  @override
  String toString() {
    return 'AuthFormEvent.registerWithEmailAndPassword(email: $email, password: $password, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterWithEmailAndPassword &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
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
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(username);

  @override
  $RegisterWithEmailAndPasswordCopyWith<RegisterWithEmailAndPassword>
      get copyWith => _$RegisterWithEmailAndPasswordCopyWithImpl<
          RegisterWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result registerWithEmailAndPassword(
            String email, String password, String username),
    @required Result loginWithEmailAndPassword(String password, String email),
  }) {
    assert(registerWithEmailAndPassword != null);
    assert(loginWithEmailAndPassword != null);
    return registerWithEmailAndPassword(email, password, username);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerWithEmailAndPassword(
        String email, String password, String username),
    Result loginWithEmailAndPassword(String password, String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(email, password, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    @required Result loginWithEmailAndPassword(LoginWithEmailAndPassword value),
  }) {
    assert(registerWithEmailAndPassword != null);
    assert(loginWithEmailAndPassword != null);
    return registerWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    Result loginWithEmailAndPassword(LoginWithEmailAndPassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPassword implements AuthFormEvent {
  const factory RegisterWithEmailAndPassword(
      {@required String email,
      @required String password,
      @required String username}) = _$RegisterWithEmailAndPassword;

  @override
  String get email;
  @override
  String get password;
  String get username;
  @override
  $RegisterWithEmailAndPasswordCopyWith<RegisterWithEmailAndPassword>
      get copyWith;
}

abstract class $LoginWithEmailAndPasswordCopyWith<$Res>
    implements $AuthFormEventCopyWith<$Res> {
  factory $LoginWithEmailAndPasswordCopyWith(LoginWithEmailAndPassword value,
          $Res Function(LoginWithEmailAndPassword) then) =
      _$LoginWithEmailAndPasswordCopyWithImpl<$Res>;
  @override
  $Res call({String password, String email});
}

class _$LoginWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res>
    implements $LoginWithEmailAndPasswordCopyWith<$Res> {
  _$LoginWithEmailAndPasswordCopyWithImpl(LoginWithEmailAndPassword _value,
      $Res Function(LoginWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as LoginWithEmailAndPassword));

  @override
  LoginWithEmailAndPassword get _value =>
      super._value as LoginWithEmailAndPassword;

  @override
  $Res call({
    Object password = freezed,
    Object email = freezed,
  }) {
    return _then(LoginWithEmailAndPassword(
      password: password == freezed ? _value.password : password as String,
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

class _$LoginWithEmailAndPassword implements LoginWithEmailAndPassword {
  const _$LoginWithEmailAndPassword(
      {@required this.password, @required this.email})
      : assert(password != null),
        assert(email != null);

  @override
  final String password;
  @override
  final String email;

  @override
  String toString() {
    return 'AuthFormEvent.loginWithEmailAndPassword(password: $password, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginWithEmailAndPassword &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(email);

  @override
  $LoginWithEmailAndPasswordCopyWith<LoginWithEmailAndPassword> get copyWith =>
      _$LoginWithEmailAndPasswordCopyWithImpl<LoginWithEmailAndPassword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result registerWithEmailAndPassword(
            String email, String password, String username),
    @required Result loginWithEmailAndPassword(String password, String email),
  }) {
    assert(registerWithEmailAndPassword != null);
    assert(loginWithEmailAndPassword != null);
    return loginWithEmailAndPassword(password, email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerWithEmailAndPassword(
        String email, String password, String username),
    Result loginWithEmailAndPassword(String password, String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginWithEmailAndPassword != null) {
      return loginWithEmailAndPassword(password, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    @required Result loginWithEmailAndPassword(LoginWithEmailAndPassword value),
  }) {
    assert(registerWithEmailAndPassword != null);
    assert(loginWithEmailAndPassword != null);
    return loginWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    Result loginWithEmailAndPassword(LoginWithEmailAndPassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginWithEmailAndPassword != null) {
      return loginWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class LoginWithEmailAndPassword implements AuthFormEvent {
  const factory LoginWithEmailAndPassword(
      {@required String password,
      @required String email}) = _$LoginWithEmailAndPassword;

  @override
  String get password;
  @override
  String get email;
  @override
  $LoginWithEmailAndPasswordCopyWith<LoginWithEmailAndPassword> get copyWith;
}

class _$AuthFormStateTearOff {
  const _$AuthFormStateTearOff();

  _SignInFormState call(
      {@required String email,
      @required String password,
      String username,
      bool loggedIn,
      bool failureHappend,
      AuthFailure failure}) {
    return _SignInFormState(
      email: email,
      password: password,
      username: username,
      loggedIn: loggedIn,
      failureHappend: failureHappend,
      failure: failure,
    );
  }
}

// ignore: unused_element
const $AuthFormState = _$AuthFormStateTearOff();

mixin _$AuthFormState {
  String get email;
  String get password;
  String get username;
  bool get loggedIn;
  bool get failureHappend;
  AuthFailure get failure;

  $AuthFormStateCopyWith<AuthFormState> get copyWith;
}

abstract class $AuthFormStateCopyWith<$Res> {
  factory $AuthFormStateCopyWith(
          AuthFormState value, $Res Function(AuthFormState) then) =
      _$AuthFormStateCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String password,
      String username,
      bool loggedIn,
      bool failureHappend,
      AuthFailure failure});

  $AuthFailureCopyWith<$Res> get failure;
}

class _$AuthFormStateCopyWithImpl<$Res>
    implements $AuthFormStateCopyWith<$Res> {
  _$AuthFormStateCopyWithImpl(this._value, this._then);

  final AuthFormState _value;
  // ignore: unused_field
  final $Res Function(AuthFormState) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object username = freezed,
    Object loggedIn = freezed,
    Object failureHappend = freezed,
    Object failure = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      username: username == freezed ? _value.username : username as String,
      loggedIn: loggedIn == freezed ? _value.loggedIn : loggedIn as bool,
      failureHappend: failureHappend == freezed
          ? _value.failureHappend
          : failureHappend as bool,
      failure: failure == freezed ? _value.failure : failure as AuthFailure,
    ));
  }

  @override
  $AuthFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $AuthFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

abstract class _$SignInFormStateCopyWith<$Res>
    implements $AuthFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String password,
      String username,
      bool loggedIn,
      bool failureHappend,
      AuthFailure failure});

  @override
  $AuthFailureCopyWith<$Res> get failure;
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
    Object email = freezed,
    Object password = freezed,
    Object username = freezed,
    Object loggedIn = freezed,
    Object failureHappend = freezed,
    Object failure = freezed,
  }) {
    return _then(_SignInFormState(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      username: username == freezed ? _value.username : username as String,
      loggedIn: loggedIn == freezed ? _value.loggedIn : loggedIn as bool,
      failureHappend: failureHappend == freezed
          ? _value.failureHappend
          : failureHappend as bool,
      failure: failure == freezed ? _value.failure : failure as AuthFailure,
    ));
  }
}

class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {@required this.email,
      @required this.password,
      this.username,
      this.loggedIn,
      this.failureHappend,
      this.failure})
      : assert(email != null),
        assert(password != null);

  @override
  final String email;
  @override
  final String password;
  @override
  final String username;
  @override
  final bool loggedIn;
  @override
  final bool failureHappend;
  @override
  final AuthFailure failure;

  @override
  String toString() {
    return 'AuthFormState(email: $email, password: $password, username: $username, loggedIn: $loggedIn, failureHappend: $failureHappend, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.loggedIn, loggedIn) ||
                const DeepCollectionEquality()
                    .equals(other.loggedIn, loggedIn)) &&
            (identical(other.failureHappend, failureHappend) ||
                const DeepCollectionEquality()
                    .equals(other.failureHappend, failureHappend)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(loggedIn) ^
      const DeepCollectionEquality().hash(failureHappend) ^
      const DeepCollectionEquality().hash(failure);

  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements AuthFormState {
  const factory _SignInFormState(
      {@required String email,
      @required String password,
      String username,
      bool loggedIn,
      bool failureHappend,
      AuthFailure failure}) = _$_SignInFormState;

  @override
  String get email;
  @override
  String get password;
  @override
  String get username;
  @override
  bool get loggedIn;
  @override
  bool get failureHappend;
  @override
  AuthFailure get failure;
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith;
}
