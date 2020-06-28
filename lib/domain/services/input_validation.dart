class InputValidation {
  final String noUsername = 'Username cannot be empty.';
  final String wrongCharacters = 'Only alphanumeric characters are allowed.';

  final String noEmail = 'Email cannot be empty.';
  final String invalidEmail = 'Email is invalid.';

  final String noPassword = 'Password cannot be empty.';
  final String invalidPassword = 'At least 1 letter and 1 number required.';
  final String shortPassword = 'Minimum 8 characters required.';

  final String notMatch = 'Password do not match.';

  String validateUsername(String name) {
    if (name == null || name.isEmpty) {
      return noUsername;
    }
    if (!name.contains(RegExp(r'^[a-zA-Z0-9-]+$'))) {
      return wrongCharacters;
    }

    return null;
  }

  String validateEmail(String email) {
    if (email == null || email.isEmpty) {
      return noEmail;
    }

    var pattern =
        r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$';
    if (!email.contains(RegExp(pattern))) {
      return invalidEmail;
    }

    return null;
  }

  String validatePassword(String password) {
    if (password == null) {
      return noPassword;
    }

    if (password.length < 8) {
      return shortPassword;
    }

    if (!password.contains(RegExp(r'^(?=.*[A-Za-z])(?=.*\d).{8,}$'))) {
      return invalidPassword;
    }

    return null;
  }

  String validateMatching(String password1, String password2) {
    if (password1 != password2) {
      return notMatch;
    }

    return null;
  }
}
