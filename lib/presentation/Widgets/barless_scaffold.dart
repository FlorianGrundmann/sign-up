import 'package:flutter/material.dart';

class BarlessScaffold extends StatelessWidget {
  final Widget body;

  const BarlessScaffold({
    Key key,
    @required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: body,
      ),
    );
  }
}
