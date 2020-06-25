import 'package:flutter/material.dart';
import 'package:sign_up/presentation/Widgets/bottom_link_text.dart';
import 'package:sign_up/presentation/Widgets/flat_card_text_field.dart';

import '../Widgets/barless_scaffold.dart';
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

    return Column(
      children: <Widget>[
        FlatCardTextField(text: 'email', icon: Icons.email),
        FlatCardTextField(text: 'password', icon: Icons.lock_outline),
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
    );
  }

  Widget _buildSignUpButton() {
    return MainButton(
      text: 'LOGIN',
      onPressed: () {},
      iconData: Icons.arrow_forward,
    );
  }
}
