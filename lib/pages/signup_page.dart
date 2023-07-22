import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quost/notifiers/account_notifier.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quost'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Sign up for an account.'),
            TextButton(
                key: const Key('signUp_textButton'),
                onPressed: () => context.read<AccountNotifier>().create(),
                child: const Text('Sign up'))
          ],
        ),
      ),
    );
  }
}
