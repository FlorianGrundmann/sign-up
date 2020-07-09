import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/logo-orange.png',
              scale: 2.5,
            ),
            SizedBox(
              height: 50.0,
            ),
            SpinKitPouringHourglass(
              color: Theme.of(context).primaryColor,
              size: 75.0,
            ),
          ],
        ),
      ),
    );
  }
}
