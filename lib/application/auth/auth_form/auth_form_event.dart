part of 'auth_form_bloc.dart';

@freezed
abstract class AuthFormEvent with _$AuthFormEvent {
  const factory AuthFormEvent.registerWithEmailAndPassword({
    @required String email,
    @required String password,
    @required String username,
  }) = RegisterWithEmailAndPassword;
  const factory AuthFormEvent.loginWithEmailAndPassword({
    @required String password,
    @required String email,
  }) = LoginWithEmailAndPassword;
}
