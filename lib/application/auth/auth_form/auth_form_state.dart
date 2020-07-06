part of 'auth_form_bloc.dart';

@freezed
abstract class AuthFormState with _$AuthFormState {
  const factory AuthFormState({
    @required String email,
    @required String password,
    String username,
    bool loggedIn,
    bool failureHappend,
    AuthFailure failure,
  }) = _SignInFormState;

  factory AuthFormState.initial() => const AuthFormState(
        email: '',
        password: '',
      );
}
