import 'package:flutter/material.dart';
import 'package:quost/domains/account.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: 1,
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.person),
              title: Text(account.npub),
            ),
            ListTile(
              leading: const Icon(Icons.key),
              title: Text(account.nsec),
            ),
          ],
        ));
  }
}
