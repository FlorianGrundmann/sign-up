import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sign_up/application/auth/auth_bloc.dart';
import 'package:sign_up/presentation/pages/email_login_page.dart';

import '../../injection.dart';
import '../Widgets/main_button.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<AuthBloc>(
        create: (context) => getIt<AuthBloc>(),
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.map(
              initial: (_) {},
              authenticated: (_) {},
              unauthenticated: (state) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EmailLoginPage(),
                  ),
                );
              },
            );
          },
          child: Builder(
            builder: (context) {
              return Center(
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
                      onPressed: () {
                        BlocProvider.of<AuthBloc>(context).add(const LogOut());
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
