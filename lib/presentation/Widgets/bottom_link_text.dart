import 'package:flutter/material.dart';

class BottomLinkText extends StatelessWidget {
  final String text;
  final String linkText;
  final Function() onPressedLink;

  const BottomLinkText({
    Key key,
    @required this.text,
    this.linkText,
    this.onPressedLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).hintColor;

    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text),
          if (text != null)
            ButtonTheme(
              minWidth: 0,
              child: FlatButton(
                padding: EdgeInsets.all(5.0),
                onPressed: onPressedLink,
                child: Text(
                  linkText,
                  style: TextStyle(color: primaryColor),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
