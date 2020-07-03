import 'package:flutter/material.dart';
import 'package:sign_up/presentation/styles/constants.dart';

class Heading extends StatelessWidget {
  final String text;
  final String subtext;
  final Alignment alignment;

  const Heading({
    Key key,
    @required this.text,
    this.alignment,
    this.subtext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle headlineStyle = Theme.of(context).textTheme.headline4;
    final TextStyle subtitle = Theme.of(context).textTheme.headline5;
    final Widget tinyVerticalDistance = Constants.tinyVerticalWhiteSpace;

    return Align(
      alignment: Alignment.bottomLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            text,
            style: headlineStyle,
          ),
          tinyVerticalDistance,
          if (subtext != null)
            Text(
              subtext,
              style: subtitle,
            ),
        ],
      ),
    );
  }
}
