import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'auth_failure.dart';
import 'user.dart';

abstract class Auth {
  Future<User> getSignedInUser();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required String emailAddress,
    @required String password,
  });

  Future<Either<AuthFailure, Unit>> logInWithEmailAndPassword({
    @required String emailAddress,
    @required String password,
  });

  Future<void> logOut();
}
