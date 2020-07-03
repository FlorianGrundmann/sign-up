part of 'auth_form_bloc.dart';

@freezed
abstract class AuthFormState with _$AuthFormState {
  const factory AuthFormState({
    @required String emailAddress,
    @required String password,
    String username,
  }) = _SignInFormState;

  factory AuthFormState.initial() => const AuthFormState(
        emailAddress: '',
        password: '',
      );
}
