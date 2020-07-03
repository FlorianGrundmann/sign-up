// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:sign_up/infrastructure/auth/firebase_auth.dart';
import 'package:sign_up/domain/auth/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerLazySingleton<Auth>(() => FirebaseAuthFacade(g<FirebaseAuth>()));
}
