import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/auth/user.dart';

extension FirebaseUserMapper on FirebaseUser {
  User toUser() {
    return User(
      email: email,
      username: displayName,
      id: uid,
    );
  }
}
