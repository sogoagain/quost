import 'package:flutter/foundation.dart';
import 'package:quost/domains/account.dart';

class AccountNotifier with ChangeNotifier, DiagnosticableTreeMixin {
  Account? _account;

  Account? get account => _account;

  void create() {
    _account = Account();
    notifyListeners();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ObjectFlagProperty('account', account));
  }
}
