import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quost/app.dart';
import 'package:quost/notifiers/account_notifier.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => AccountNotifier())],
    child: const App(),
  ));
}
