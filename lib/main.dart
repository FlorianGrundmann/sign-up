import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'presentation/pages/email_sign_up.dart';
import 'presentation/styles/white_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: WhiteTheme().themeData,
      home: EmailSignUpPage(),
    );
  }
}
