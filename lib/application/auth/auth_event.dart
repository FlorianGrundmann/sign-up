part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequest() = AuthCheckRequest;
  const factory AuthEvent.logOut() = LogOut;
}
