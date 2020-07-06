import 'package:flutter/material.dart';

import '../Widgets/main_button.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "You are logged in.",
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 10.0),
            MainButton(
              text: 'Logout',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
