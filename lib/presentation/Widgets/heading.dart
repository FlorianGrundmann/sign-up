import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String text;
  final Alignment alignment;

  const Heading({
    Key key,
    @required this.text,
    this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
