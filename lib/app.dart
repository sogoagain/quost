import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quost/pages/signup_page.dart';
import 'package:quost/pages/key_confirmation_page.dart';
import 'package:quost/notifiers/account_notifier.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quost',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Consumer<AccountNotifier>(
          builder: (context, accountNotifier, child) {
            if(accountNotifier.account == null) {
              return const SignUpPage();
            } else {
              return const KeyConfirmationPage();
            }
          }
        )
      )
    );
  }
}
