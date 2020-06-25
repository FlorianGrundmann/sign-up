import 'package:flutter/material.dart';

class FlatCardTextField extends StatefulWidget {
  final String text;
  final IconData icon;

  const FlatCardTextField({
    Key key,
    @required this.text,
    @required this.icon,
  }) : super(key: key);

  @override
  _FlatCardTextFieldState createState() => _FlatCardTextFieldState();
}

class _FlatCardTextFieldState extends State<FlatCardTextField> {
  FocusNode focus = FocusNode();

  @override
  void initState() {
    super.initState();
    focus.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final double textFieldElevation = 5.0;
    final double textFieldPadding = 10.0;
    final double smallVerticalDistance = 5.0;

    Color canvasColor = Theme.of(context).canvasColor;
    Color secondaryColor = Theme.of(context).hintColor;
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
              labelText: widget.text.toUpperCase(),
              labelStyle: TextStyle(color: secondaryColor),
              icon: Icon(
                widget.icon,
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
}
