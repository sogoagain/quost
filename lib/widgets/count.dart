import 'package:flutter/material.dart';

class Count extends StatelessWidget {
  const Count({super.key, required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$count',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
