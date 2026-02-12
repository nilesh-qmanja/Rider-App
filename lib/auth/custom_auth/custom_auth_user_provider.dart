import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class DipakshiriderAuthUser {
  DipakshiriderAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<DipakshiriderAuthUser> dipakshiriderAuthUserSubject =
    BehaviorSubject.seeded(DipakshiriderAuthUser(loggedIn: false));
Stream<DipakshiriderAuthUser> dipakshiriderAuthUserStream() =>
    dipakshiriderAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
