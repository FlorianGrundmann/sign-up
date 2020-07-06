import 'package:flutter/material.dart';

class FlatCardTextField extends StatefulWidget {
  final String text;
  final IconData icon;
  final bool autovalidate;
  final bool obscureText;
  final String Function(String) validator;
  final Function(String) onChanged;
  final TextEditingController controller;

  const FlatCardTextField({
    Key key,
    @required this.text,
    @required this.icon,
    this.validator,
    this.autovalidate,
    this.obscureText,
    this.onChanged,
    this.controller,
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
    const double textFieldElevation = 5.0;
    const double textFieldPadding = 10.0;
    const double smallVerticalDistance = 5.0;

    final Color canvasColor = Theme.of(context).canvasColor;
    final Color secondaryColor = Theme.of(context).hintColor;
    final TextStyle inputTextStyle = Theme.of(context).textTheme.subtitle2;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: smallVerticalDistance / 2),
      color: canvasColor,
      elevation: focus.hasFocus ? textFieldElevation : 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: textFieldPadding),
        child: TextFormField(
          obscureText: widget.obscureText ?? false,
          autovalidate: widget.autovalidate ?? false,
          validator: widget.validator,
          focusNode: focus,
          style: inputTextStyle,
          onChanged: widget.onChanged,
          controller: widget.controller,
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
    );
  }
}
