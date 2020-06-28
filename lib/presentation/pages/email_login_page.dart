import 'package:flutter/material.dart';

import '../../domain/services/input_validation.dart';
import '../Widgets/barless_scaffold.dart';
import '../Widgets/bottom_link_text.dart';
import '../Widgets/flat_card_text_field.dart';
import '../Widgets/heading.dart';
import '../Widgets/main_button.dart';
import '../Widgets/topright_logo.dart';
import '../styles/constants.dart';
import 'email_sign_up_page.dart';

class EmailLoginPage extends StatefulWidget {
  EmailLoginPage({Key key}) : super(key: key);

  @override
  _EmailLoginPageState createState() => _EmailLoginPageState();
}

class _EmailLoginPageState extends State<EmailLoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BarlessScaffold(
        body: Stack(
          children: <Widget>[
            ToprightLogo(),
            _buildBody(),
          ],
        ),
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
          Flexible(child: _buildHeading()),
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

  Widget _buildHeading() {
    final String headingText = 'Login';

    return Heading(
      text: headingText,
      alignment: Alignment.bottomLeft,
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
          BottomLinkText(
            text: "Don't have an account?",
            linkText: 'Sign up',
            onPressedLink: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EmailSignUpPage()),
              );
            },
          ),
          //_buildBottomText(),
        ],
      ),
    );
  }

  Widget _buildSignUpButton() {
    return MainButton(
      text: 'LOGIN',
      onPressed: () {
        if (_formKey.currentState.validate()) {
          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text('Processing Data')));
        }
      },
      iconData: Icons.arrow_forward,
    );
  }
}
