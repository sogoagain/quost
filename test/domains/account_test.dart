import 'package:flutter_test/flutter_test.dart';

import 'package:quost/domains/account.dart';

void main() {
  test('Create account', () {
    final account = Account();

    expect(account.nsec, startsWith("nsec"));
    expect(account.npub, startsWith("npub"));
  });
}
