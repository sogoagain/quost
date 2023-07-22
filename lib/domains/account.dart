import 'package:nostr/nostr.dart';

class Account {
  late Keychain _keychain;

  Account() {
    _keychain = Keychain.generate();
  }

  String get nsec {
    return Nip19.encodePrivkey(_keychain.private);
  }

  String get npub {
    return Nip19.encodePubkey(_keychain.public);
  }
}
