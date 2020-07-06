import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sign_up/application/auth/auth_form/auth_form_bloc.dart';
import 'package:sign_up/domain/auth/auth.dart';
import 'package:sign_up/domain/auth/auth_failure.dart';

class MockAuth extends Mock implements Auth {}

void main() {
  AuthFormBloc bloc;
  MockAuth mockAuth;

  setUp(() {
    mockAuth = MockAuth();
    bloc = AuthFormBloc(mockAuth);
  });

  group('Register with email and password', () {
    const String tUsername = 'testUsername';
    const String tEmail = 'testEmail@email.com';
    const String tPassword = 'testPassword123456789';
    const AuthFailure tFailure = AuthFailure.cancelledByUser();

    test('Calls auth.registerWithEmailAndPassword', () async {
      //arrange
      when(mockAuth.registerWithEmailAndPassword(
        emailAddress: tEmail,
        password: tPassword,
      )).thenAnswer((_) async => const Right(unit));
      //act
      bloc.add(
        const RegisterWithEmailAndPassword(
          email: tEmail,
          password: tPassword,
          username: tUsername,
        ),
      );
      await untilCalled(mockAuth.registerWithEmailAndPassword(
          emailAddress: tEmail, password: tPassword));
      //assert
      verify(mockAuth.registerWithEmailAndPassword(
          emailAddress: tEmail, password: tPassword));
    });

    test('Bloc returns state with failure when failure happens.', () async {
      //arrange
      final expected = [
        AuthFormState.initial(),
        const AuthFormState(
          email: tEmail,
          password: tPassword,
          username: tUsername,
          failureHappend: true,
          failure: tFailure,
          loggedIn: false,
        ),
      ];
      when(mockAuth.registerWithEmailAndPassword(
              emailAddress: anyNamed("emailAddress"),
              password: anyNamed("password")))
          .thenAnswer((realInvocation) async => const Left(tFailure));

      //assert
      expectLater(bloc, emitsInOrder(expected));
      //act
      bloc.add(const RegisterWithEmailAndPassword(
        email: tEmail,
        password: tPassword,
        username: tUsername,
      ));
    });

    test('Bloc returns state without failure when register is successful.',
        () async {
      //arrange
      final expected = [
        AuthFormState.initial(),
        const AuthFormState(
          email: tEmail,
          password: tPassword,
          username: tUsername,
          loggedIn: true,
          failureHappend: false,
          failure: null,
        ),
      ];
      when(mockAuth.registerWithEmailAndPassword(
              emailAddress: anyNamed("emailAddress"),
              password: anyNamed("password")))
          .thenAnswer((realInvocation) async => const Right(unit));

      //assert
      expectLater(bloc, emitsInOrder(expected));
      //act
      bloc.add(const RegisterWithEmailAndPassword(
        email: tEmail,
        password: tPassword,
        username: tUsername,
      ));
    });
  });

  group('Login with email and password', () {
    const String tEmail = 'testEmail@email.com';
    const String tPassword = 'testPassword123456789';
    const AuthFailure tFailure = AuthFailure.serverError();

    test('Calls auth.loginWithEmailAndPassword', () async {
      //arrange
      when(mockAuth.logInWithEmailAndPassword(
        emailAddress: tEmail,
        password: tPassword,
      )).thenAnswer((_) async => const Right(unit));
      //act
      bloc.add(
        const LoginWithEmailAndPassword(
          email: tEmail,
          password: tPassword,
        ),
      );
      await untilCalled(mockAuth.logInWithEmailAndPassword(
          emailAddress: tEmail, password: tPassword));
      //assert
      verify(mockAuth.logInWithEmailAndPassword(
          emailAddress: tEmail, password: tPassword));
    });

    test('Bloc returns failure when failure happens.', () async {
      //arrange
      final expected = [
        AuthFormState.initial(),
        const AuthFormState(
          email: tEmail,
          password: tPassword,
          failureHappend: true,
          failure: tFailure,
          loggedIn: false,
        ),
      ];
      when(
        mockAuth.logInWithEmailAndPassword(
            emailAddress: tEmail, password: tPassword),
      ).thenAnswer((realInvocation) async => const Left(tFailure));
      //assert
      expectLater(bloc, emitsInAnyOrder(expected));
      //act
      bloc.add(const LoginWithEmailAndPassword(
        password: tPassword,
        email: tEmail,
      ));
    });

    test('Bloc returns state without failure when register is successful.',
        () async {
      //arrange
      final expected = [
        AuthFormState.initial(),
        const AuthFormState(
          email: tEmail,
          password: tPassword,
          failureHappend: false,
          loggedIn: true,
          failure: null,
        ),
      ];
      when(mockAuth.logInWithEmailAndPassword(
              emailAddress: anyNamed("emailAddress"),
              password: anyNamed("password")))
          .thenAnswer((realInvocation) async => const Right(unit));

      //assert
      expectLater(bloc, emitsInOrder(expected));
      //act
      bloc.add(const LoginWithEmailAndPassword(
        email: tEmail,
        password: tPassword,
      ));
    });
  });
}
