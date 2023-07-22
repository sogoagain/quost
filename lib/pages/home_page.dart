import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quost/notifiers/account_notifier.dart';
import 'package:quost/widgets/account.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final account = context.watch<AccountNotifier>().account;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quost'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            account != null
                ? AccountWidget(account: account)
                : const Text('Sign up for an account.'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: const Key('increment_floatingActionButton'),
        onPressed: () => context.read<AccountNotifier>().create(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
