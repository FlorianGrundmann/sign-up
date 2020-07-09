import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../application/auth/auth_bloc.dart';
import '../../injection.dart';
import 'email_login_page.dart';
import 'welcome_page.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<AuthBloc>()..add(const AuthCheckRequest()),
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.map(
              initial: (_) {},
              authenticated: (_) => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const WelcomePage(),
                ),
              ),
              unauthenticated: (_) => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const EmailLoginPage(),
                ),
              ),
            );
          },
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/logo-orange.png',
                  scale: 2.5,
                ),
                const SizedBox(
                  height: 50.0,
                ),
                SpinKitPouringHourglass(
                  color: Theme.of(context).primaryColor,
                  size: 75.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
