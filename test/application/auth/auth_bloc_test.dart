import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sign_up/application/auth/auth_bloc.dart';
import 'package:sign_up/domain/auth/auth.dart';
import 'package:sign_up/domain/auth/user.dart';

class MockAuth extends Mock implements Auth {}

void main() {
  Auth mockAuth;
  AuthBloc bloc;

  setUp(() {
    mockAuth = MockAuth();
    bloc = AuthBloc(mockAuth);
  });

  group('Log out', () {
    test('Calls auth sign out.', () async {
      //arrange
      //act
      bloc.add(const LogOut());
      await untilCalled(mockAuth.logOut());
      //assert
      verify(mockAuth.logOut());
    });

    test('Emits [Initial, Unauthenticated] when logging out.', () async {
      //arrange
      final expected = [
        const Initial(),
        const Unauthenticated(),
      ];
      //assert
      expectLater(bloc, emitsInOrder(expected));
      //act
      bloc.add(const LogOut());
    });
  });

  group('Auth check request', () {
    test('Calls getSignedInUser', () async {
      //arrange
      //act
      bloc.add(const AuthCheckRequest());
      await untilCalled(mockAuth.getSignedInUser());
      //assert
      verify(mockAuth.getSignedInUser());
    });

    test('Emits [Initial, Unauthenticated] when no user is signed in.',
        () async {
      //arrange
      final expected = [
        const Initial(),
        const Unauthenticated(),
      ];
      //act
      bloc.add(const AuthCheckRequest());
      await untilCalled(mockAuth.getSignedInUser());
      //assert
      expectLater(bloc, emitsInAnyOrder(expected));
    });

    test('Emits [Initial, Authenticated] when a user is signed in.', () async {
      //arrange
      const String tId = "testId";
      const User tUser = User(id: tId);
      final expected = [
        const Initial(),
        const Authenticated(user: tUser),
      ];
      when(mockAuth.getSignedInUser())
          .thenAnswer((realInvocation) async => tUser);
      //act
      bloc.add(const AuthCheckRequest());
      await untilCalled(mockAuth.getSignedInUser());
      //assert
      expectLater(bloc, emitsInAnyOrder(expected));
    });
  });
}
