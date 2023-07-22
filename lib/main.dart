import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quost/app.dart';
import 'package:quost/features/counter.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => Counter())],
    child: const App(),
  ));
}
