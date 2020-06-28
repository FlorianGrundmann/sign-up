import 'package:flutter_test/flutter_test.dart';
import 'package:sign_up/domain/services/input_validation.dart';

void main() {
  InputValidation validation = InputValidation();

  group('Username validation', () {
    test('Returns null when name is valid', () async {
      //arrange
      //act
      String result = validation.validateUsername('ValidName');
      //assert
      expect(result, isNull);
    });

    test('Returns string when name is empty', () async {
      //arrange
      //act
      String result = validation.validateUsername('');
      //assert
      expect(result, isNotNull);
    });

    test('Returns string when name is contains special characters.', () async {
      //arrange
      //act
      String result = validation.validateUsername('Invalid/Name');
      //assert
      expect(result, isNotNull);
    });
  });

  group('Email validation', () {
    test('Returns null when email is valid', () async {
      //arrange
      //act
      String result = validation.validateEmail('valid@email.com');
      //assert
      expect(result, isNull);
    });

    test('Returns null when email is valid and contains name with dot',
        () async {
      //arrange
      //act
      String result = validation.validateEmail('is.valid@email.com');
      //assert
      expect(result, isNull);
    });

    test('Returns string when email is empty', () async {
      //arrange
      //act
      String result = validation.validateEmail('');
      //assert
      expect(result, isNotNull);
    });

    test('Returns string when email is invalid', () async {
      //arrange
      //act
      String result = validation.validateEmail('@@@.com');
      //assert
      expect(result, isNotNull);
    });

    test('Returns string when email has no domain', () async {
      //arrange
      //act
      String result = validation.validateEmail('invalid.email');
      //assert
      expect(result, isNotNull);
    });
  });

  group('Password validation', () {
    test('Return null with a valid password', () async {
      //arrange
      //act
      String result = validation.validatePassword('test_123456789');
      //assert
      expect(result, isNull);
    });

    test('Return string when password is null', () async {
      //arrange
      //act
      String result = validation.validatePassword(null);
      //assert
      expect(result, isNotNull);
    });

    test('Return string when password is empty', () async {
      //arrange
      //act
      String result = validation.validatePassword('');
      //assert
      expect(result, isNotNull);
    });

    test('Return string when password is shorter than 8.', () async {
      //arrange
      //act
      String result = validation.validatePassword('abcdf_1');
      //assert
      expect(result, isNotNull);
    });
  });

  group('Password matching validation', () {
    test('Returns null if the passwords are matching', () async {
      //arrange
      //act
      String result = validation.validateMatching(
        'password_123',
        'password_123',
      );
      //assert
      expect(result, isNull);
    });

    test('Returns null if passwords do not match', () async {
      //arrange
      //act
      String result =
          validation.validateMatching('onePassword123', 'anotherPassword123');
      //assert
      expect(result, isNotNull);
    });
  });
}
