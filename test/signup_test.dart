import 'package:quost/main.dart' as quost;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Create account(nsec/npub)', (tester) async {
    quost.main();

    expect(find.text("Sign up for an account."), findsOneWidget);
    expect(find.byKey(const Key('signUp_textButton')), findsOneWidget);

    expect(find.textContaining('nsec'), findsNothing);
    expect(find.textContaining('npub'), findsNothing);

    await tester.tap(find.byKey(const Key('signUp_textButton')));
    await tester.pump();

    expect(find.text("Sign up for an account."), findsNothing);
    expect(find.byKey(const Key('signUp_textButton')), findsNothing);

    expect(find.textContaining('nsec'), findsOneWidget);
    expect(find.textContaining('npub'), findsOneWidget);
  });
}
