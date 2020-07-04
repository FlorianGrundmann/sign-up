part of 'auth_form_bloc.dart';

@freezed
abstract class AuthFormEvent with _$AuthFormEvent {
  const factory AuthFormEvent.registerWithEmailAndPassword() =
      RegisterWithEmailAndPassword;
  const factory AuthFormEvent.logInWithEmailAndPassword() =
      LogInWithEmailAndPassword;
}
