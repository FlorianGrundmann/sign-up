import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:sign_up/domain/auth/auth.dart';
import 'package:sign_up/domain/auth/user.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final Auth auth;

  AuthBloc(this.auth) : super(const Initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequest: _mapAuthCheckRequest,
      logOut: _mapLogOut,
    );
  }

  Stream<AuthState> _mapAuthCheckRequest(AuthEvent event) async* {
    final User user = await auth.getSignedInUser();
    yield user == null ? const Unauthenticated() : Authenticated(user: user);
  }

  Stream<AuthState> _mapLogOut(AuthEvent event) async* {
    auth.logOut();
    yield const Unauthenticated();
  }
}
