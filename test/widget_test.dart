import 'package:quost/main.dart' as quost;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Create account(nsec/npub)', (tester) async {
    quost.main();

    expect(find.text("Sign up for an account."), findsOneWidget);
    expect(find.textContaining('nsec'), findsNothing);
    expect(find.textContaining('npub'), findsNothing);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.textContaining('nsec'), findsOneWidget);
    expect(find.textContaining('npub'), findsOneWidget);
  });
}
