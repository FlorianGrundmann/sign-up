part of 'auth_form_bloc.dart';

@freezed
abstract class AuthFormEvent with _$AuthFormEvent {
  const factory AuthFormEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPassword;
  const factory AuthFormEvent.logInWithEmailAndPasswordPressed() =
      LogInWithEmailAndPassword;
}
