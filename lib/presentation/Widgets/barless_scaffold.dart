import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
          iconTheme:
              IconThemeData(color: Theme.of(context).textTheme.bodyText2.color),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: body,
        ),
      ),
    );
  }
}
