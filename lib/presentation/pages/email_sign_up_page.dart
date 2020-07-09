import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_form/auth_form_bloc.dart';
import '../../domain/services/input_validation.dart';
import '../../injection.dart';
import '../Widgets/barless_scaffold.dart';
import '../Widgets/bottom_link_text.dart';
import '../Widgets/flat_card_text_field.dart';
import '../Widgets/heading.dart';
import '../Widgets/main_button.dart';
import '../Widgets/topright_logo.dart';
import '../styles/constants.dart';
import 'welcome_page.dart';

class EmailSignUpPage extends StatefulWidget {
  const EmailSignUpPage({Key key}) : super(key: key);

  @override
  _EmailSignUpPageState createState() => _EmailSignUpPageState();
}

class _EmailSignUpPageState extends State<EmailSignUpPage> {
  @override
  Widget build(BuildContext context) {
    return BarlessScaffold(
      body: Stack(
        children: <Widget>[
          const ToprightLogo(),
          _SignUpBody(),
        ],
      ),
    );
  }
}

class _SignUpBody extends StatelessWidget {
  final double mainPadding = Constants.scaffoldPadding;
  final Widget verticalWhiteSpace = Constants.verticalWhiteSpace;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: mainPadding),
      child: Column(
        children: <Widget>[
          Flexible(
            child: _Heading(),
          ),
          verticalWhiteSpace,
          Flexible(
            flex: 2,
            child: SingleChildScrollView(
              child: Container(
                color: Theme.of(context).canvasColor,
                child: _SignUpForm(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Heading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const String headingText = 'Create Account';

    return Heading(
      text: headingText,
      alignment: Alignment.bottomLeft,
    );
  }
}

class _SignUpForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final Widget verticalDistance = Constants.smallVerticalWhiteSpace;
  final InputValidation validation = InputValidation();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthFormBloc>(),
      child: BlocListener<AuthFormBloc, AuthFormState>(
        listener: (context, state) {
          if (state.loggedIn) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const WelcomePage()),
              (Route<dynamic> route) => false,
            );
          }
          if (state.failureHappend) {
            if (state.failure != null) {
              FlushbarHelper.createError(
                message: state.failure.map(
                  cancelledByUser: (_) => 'Login cancelled by user.',
                  serverError: (_) => 'An unexpected error happened.',
                  emailAlreadyInUse: (_) => 'Email is already taken.',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Invalid email and password combination.',
                ),
              ).show(context);
            } else {
              FlushbarHelper.createError(
                message: 'An unexpected error happened',
              ).show(context);
            }
          }
        },
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              FlatCardTextField(
                text: 'username',
                icon: Icons.account_circle,
                validator: validation.validateUsername,
                controller: usernameController,
              ),
              FlatCardTextField(
                text: 'email',
                icon: Icons.email,
                validator: validation.validateEmail,
                controller: emailController,
              ),
              FlatCardTextField(
                text: 'password',
                icon: Icons.lock_outline,
                obscureText: true,
                validator: validation.validatePassword,
                controller: passwordController,
              ),
              verticalDistance,
              Align(
                alignment: Alignment.topRight,
                child: _SignUpButton(
                  formKey: _formKey,
                  emailController: emailController,
                  usernameController: usernameController,
                  passwordController: passwordController,
                ),
              ),
              verticalDistance,
              _BottomText(),
            ],
          ),
        ),
      ),
    );
  }
}

class _SignUpButton extends StatelessWidget {
  String get _buttonText => 'SIGN UP';

  final TextEditingController usernameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  final GlobalKey<FormState> formKey;

  const _SignUpButton({
    Key key,
    this.formKey,
    this.usernameController,
    this.emailController,
    this.passwordController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainButton(
      onPressed: () {
        if (formKey.currentState.validate()) {
          context.bloc<AuthFormBloc>().add(
                RegisterWithEmailAndPassword(
                  email: emailController.text,
                  password: passwordController.text,
                  username: usernameController.text,
                ),
              );
        }
      },
      text: _buttonText,
      iconData: Icons.arrow_forward,
    );
  }
}

class _BottomText extends StatelessWidget {
  final String bottomText = 'Already have an account?';
  final String linkText = 'Sign in';

  @override
  Widget build(BuildContext context) {
    return BottomLinkText(
      text: bottomText,
      linkText: linkText,
      onPressedLink: () {
        Navigator.pop(context);
      },
    );
  }
}
