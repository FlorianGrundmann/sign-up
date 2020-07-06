import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:sign_up/domain/auth/auth_failure.dart';

import '../../../domain/auth/auth.dart';

part 'auth_form_bloc.freezed.dart';
part 'auth_form_event.dart';
part 'auth_form_state.dart';

@injectable
class AuthFormBloc extends Bloc<AuthFormEvent, AuthFormState> {
  final Auth auth;

  AuthFormBloc(this.auth) : super(AuthFormState.initial());

  @override
  Stream<AuthFormState> mapEventToState(
    AuthFormEvent event,
  ) async* {
    yield* event.map(
      registerWithEmailAndPassword: _mapRegisterWithEmailAndPassword,
      loginWithEmailAndPassword: _mapLoginWithEmailAndPassword,
    );
  }

  Stream<AuthFormState> _mapRegisterWithEmailAndPassword(
      RegisterWithEmailAndPassword event) async* {
    final Either<AuthFailure, Unit> result =
        await auth.registerWithEmailAndPassword(
            emailAddress: event.email, password: event.password);

    final AuthFormState resultState = AuthFormState(
      email: event.email,
      password: event.password,
      username: event.username,
    );

    yield result.fold(
      (f) => resultState.copyWith(
        failureHappend: true,
        failure: f,
      ),
      (r) => resultState.copyWith(
        loggedIn: true,
        failureHappend: false,
      ),
    );
  }

  Stream<AuthFormState> _mapLoginWithEmailAndPassword(
      LoginWithEmailAndPassword event) async* {
    final Either<AuthFailure, Unit> result =
        await auth.logInWithEmailAndPassword(
      emailAddress: event.email,
      password: event.password,
    );

    final AuthFormState resultState = AuthFormState(
      email: event.email,
      password: event.password,
    );

    yield result.fold(
      (f) => resultState.copyWith(
        failureHappend: true,
        failure: f,
      ),
      (r) => resultState.copyWith(
        loggedIn: true,
        failureHappend: false,
      ),
    );
  }
}
