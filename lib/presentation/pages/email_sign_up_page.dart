import 'package:flutter/material.dart';

import '../../domain/services/input_validation.dart';
import '../Widgets/barless_scaffold.dart';
import '../Widgets/bottom_link_text.dart';
import '../Widgets/flat_card_text_field.dart';
import '../Widgets/heading.dart';
import '../Widgets/main_button.dart';
import '../Widgets/topright_logo.dart';
import '../styles/constants.dart';

class EmailSignUpPage extends StatefulWidget {
  const EmailSignUpPage({Key key}) : super(key: key);

  @override
  _EmailSignUpPageState createState() => _EmailSignUpPageState();
}

class _EmailSignUpPageState extends State<EmailSignUpPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BarlessScaffold(
      body: Stack(
        children: <Widget>[
          ToprightLogo(),
          _buildBody(),
        ],
      ),
    );
  }

  Widget _buildBody() {
    final double mainPadding = Constants.scaffoldPadding;
    final Widget verticalWhiteSpace = Constants.verticalWhiteSpace;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: mainPadding),
      child: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: _buildHeading(),
          ),
          verticalWhiteSpace,
          Flexible(
            flex: 2,
            child: SingleChildScrollView(
              child: Container(
                color: Theme.of(context).canvasColor,
                child: _buildForm(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildForm() {
    final Widget verticalDistance = Constants.smallVerticalWhiteSpace;
    final InputValidation validation = InputValidation();

    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          FlatCardTextField(
            text: 'username',
            icon: Icons.account_circle,
            validator: validation.validateUsername,
          ),
          FlatCardTextField(
            text: 'email',
            icon: Icons.email,
            validator: validation.validateEmail,
          ),
          FlatCardTextField(
            text: 'password',
            icon: Icons.lock_outline,
            validator: validation.validatePassword,
          ),
          verticalDistance,
          Align(
            alignment: Alignment.topRight,
            child: _buildSignUpButton(),
          ),
          verticalDistance,
          _buildBottomText(),
        ],
      ),
    );
  }

  Widget _buildHeading() {
    final String headingText = 'Create Account';

    return Heading(
      text: headingText,
      alignment: Alignment.bottomLeft,
    );
  }

  Widget _buildSignUpButton() {
    final String buttonText = 'SIGN UP';

    return MainButton(
      onPressed: () {
        if (_formKey.currentState.validate()) {
          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text('Processing Data')));
        }
      },
      text: buttonText,
      iconData: Icons.arrow_forward,
    );
  }

  Widget _buildBottomText() {
    final String bottomText = 'Already have an account?';
    final String linkText = 'Sign in';

    return BottomLinkText(
      text: bottomText,
      linkText: linkText,
      onPressedLink: () {
        Navigator.pop(context);
      },
    );
  }
}
