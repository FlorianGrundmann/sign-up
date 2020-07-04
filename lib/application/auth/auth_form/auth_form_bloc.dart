import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'auth_form_bloc.freezed.dart';
part 'auth_form_event.dart';
part 'auth_form_state.dart';

@injectable
class AuthFormBloc extends Bloc<AuthFormEvent, AuthFormState> {
  AuthFormBloc() : super(AuthFormState.initial());

  @override
  Stream<AuthFormState> mapEventToState(
    AuthFormEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
