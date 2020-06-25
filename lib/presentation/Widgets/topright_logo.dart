import 'package:flutter/material.dart';

class ToprightLogo extends StatelessWidget {
  const ToprightLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Positioned(
        top: -20,
        right: -50,
        child: Image.asset(
          'assets/images/logo.png',
          scale: 1,
        ),
      ),
    );
  }
}
