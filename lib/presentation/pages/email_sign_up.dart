import 'package:flutter/material.dart';

class EmailSignUpPage extends StatefulWidget {
  const EmailSignUpPage({Key key}) : super(key: key);

  @override
  _EmailSignUpPageState createState() => _EmailSignUpPageState();
}

class _EmailSignUpPageState extends State<EmailSignUpPage> {
  final FocusNode nameFocus = FocusNode();
  final FocusNode emailFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();
  final FocusNode confirmFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    nameFocus.addListener(() {
      setState(() {});
    });
    emailFocus.addListener(() {
      setState(() {});
    });
    passwordFocus.addListener(() {
      setState(() {});
    });
    confirmFocus.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: -20,
            right: -50,
            child: Image.asset(
              'assets/images/logo.png',
              scale: 1,
            ),
          ),
          _buildBody(),
        ],
      ),
    );
  }

  Widget _buildBody() {
    final double mainPadding = 50.0;
    final Widget verticalWhiteSpace = SizedBox(height: 30.0);

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

  Widget _buildForm() {
    final double verticalDistance = 10.0;
    return Column(
      children: <Widget>[
        _buildTextField('username', Icons.account_circle, nameFocus),
        _buildTextField('email', Icons.email, emailFocus),
        _buildTextField('password', Icons.lock_outline, passwordFocus),
        _buildTextField('confirm password', Icons.lock_outline, confirmFocus),
        SizedBox(height: verticalDistance),
        Align(
          alignment: Alignment.topRight,
          child: _buildSignUpButton(),
        ),
        SizedBox(height: verticalDistance),
        _buildBottomText(),
      ],
    );
  }

  Widget _buildHeading() {
    TextStyle headlineStyle = Theme.of(context).textTheme.headline4;
    final String headingText = 'Create Account';

    return Align(
      alignment: Alignment.bottomLeft,
      child: Text(
        headingText,
        style: headlineStyle,
      ),
    );
  }

  Widget _buildTextField(String labelText, IconData icon, FocusNode focus) {
    final double textFieldElevation = 5.0;
    final double textFieldPadding = 10.0;
    final double smallVerticalDistance = 5.0;

    Color canvasColor = Theme.of(context).canvasColor;
    Color secondaryColor = Theme.of(context).textTheme.headline4.color;
    TextStyle inputTextStyle = Theme.of(context).textTheme.subtitle2;

    return Container(
      child: Card(
        margin: EdgeInsets.symmetric(vertical: smallVerticalDistance / 2),
        color: canvasColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: textFieldPadding),
          child: TextField(
            focusNode: focus,
            style: inputTextStyle,
            decoration: InputDecoration(
              labelText: labelText.toUpperCase(),
              labelStyle: TextStyle(color: secondaryColor),
              icon: Icon(
                icon,
                color: secondaryColor,
              ),
              focusColor: canvasColor,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
          ),
        ),
        elevation: focus.hasFocus ? textFieldElevation : 0,
      ),
    );
  }

  Widget _buildSignUpButton() {
    final double buttonCornerRadius = 25.0;
    final double buttonPadding = 25.0;
    final String buttonText = 'SIGN UP';

    return RaisedButton.icon(
      padding: EdgeInsets.symmetric(
          horizontal: buttonPadding, vertical: buttonPadding / 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(buttonCornerRadius),
      ),
      elevation: 0,
      color: Theme.of(context).primaryColor,
      icon: Text(
        buttonText,
        style: Theme.of(context).primaryTextTheme.button,
      ),
      label: Icon(
        Icons.arrow_forward,
        color: Theme.of(context).primaryTextTheme.button.color,
      ),
      onPressed: () {},
    );
  }

  Widget _buildBottomText() {
    final String bottomText = 'Already have an account?';
    final String linkText = 'Sign in';
    final Color primaryColor = Theme.of(context).primaryColor;

    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(bottomText),
          ButtonTheme(
            minWidth: 0,
            child: FlatButton(
                padding: EdgeInsets.all(5.0),
                onPressed: () {},
                child: Text(
                  linkText,
                  style: TextStyle(color: primaryColor),
                )),
          ),
        ],
      ),
    );
  }
}
