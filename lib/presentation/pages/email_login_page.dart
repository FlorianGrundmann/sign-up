import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sign_up/application/auth/auth_form/auth_form_bloc.dart';

import '../../domain/services/input_validation.dart';
import '../../injection.dart';
import '../Widgets/barless_scaffold.dart';
import '../Widgets/bottom_link_text.dart';
import '../Widgets/flat_card_text_field.dart';
import '../Widgets/heading.dart';
import '../Widgets/main_button.dart';
import '../Widgets/topright_logo.dart';
import '../styles/constants.dart';
import 'email_sign_up_page.dart';

class EmailLoginPage extends StatefulWidget {
  const EmailLoginPage({Key key}) : super(key: key);

  @override
  _EmailLoginPageState createState() => _EmailLoginPageState();
}

class _EmailLoginPageState extends State<EmailLoginPage> {
  @override
  Widget build(BuildContext context) {
    return BarlessScaffold(
      body: Stack(
        children: <Widget>[
          const ToprightLogo(),
          _LoginBody(),
        ],
      ),
    );
  }
}

class _LoginBody extends StatelessWidget {
  final double mainPadding = Constants.scaffoldPadding;
  final Widget verticalWhiteSpace = Constants.verticalWhiteSpace;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: mainPadding),
      child: Column(
        children: <Widget>[
          Flexible(child: _LoginHeading()),
          verticalWhiteSpace,
          Flexible(
            flex: 2,
            child: SingleChildScrollView(
              child: Container(
                color: Theme.of(context).canvasColor,
                child: _LoginForm(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LoginHeading extends StatelessWidget {
  final String headingText = 'Login';
  final String subHeadingText = 'Please sign in to continue.';

  @override
  Widget build(BuildContext context) {
    return Heading(
      text: headingText,
      subtext: subHeadingText,
      alignment: Alignment.bottomLeft,
    );
  }
}

class _LoginForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final Widget verticalDistance = Constants.smallVerticalWhiteSpace;
  final InputValidation validation = InputValidation();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthFormBloc>(),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            FlatCardTextField(
              text: 'email',
              icon: Icons.email,
              validator: validation.validateEmail,
            ),
            FlatCardTextField(
              text: 'password',
              icon: Icons.lock_outline,
              obscureText: true,
              validator: validation.validatePassword,
            ),
            verticalDistance,
            Align(
              alignment: Alignment.topRight,
              child: _LoginButton(formKey: _formKey),
            ),
            verticalDistance,
            BottomLinkText(
              text: "Don't have an account?",
              linkText: 'Sign up',
              onPressedLink: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EmailSignUpPage(),
                  ),
                );
              },
            ),
            //_buildBottomText(),
          ],
        ),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const _LoginButton({Key key, this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainButton(
      text: 'LOGIN',
      onPressed: () {
        if (formKey.currentState.validate()) {
          context.bloc<AuthFormBloc>().add(const LogInWithEmailAndPassword());
        }
      },
      iconData: Icons.arrow_forward,
    );
  }
}
