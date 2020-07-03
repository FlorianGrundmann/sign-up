import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';
import 'presentation/pages/email_login_page.dart';
import 'presentation/styles/white_theme.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Authentication Demo',
      theme: WhiteTheme().themeData,
      home: const EmailLoginPage(),
    );
  }
}
