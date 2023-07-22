import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quost/notifiers/account_notifier.dart';
import 'package:quost/widgets/account.dart';

class KeyConfirmationPage extends StatelessWidget {
  const KeyConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final account = context.watch<AccountNotifier>().account!;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quost!'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[AccountWidget(account: account)],
        ),
      ),
    );
  }
}
