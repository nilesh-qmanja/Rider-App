import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class QmanjaRiderAuthUser {
  QmanjaRiderAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<QmanjaRiderAuthUser> qmanjaRiderAuthUserSubject =
    BehaviorSubject.seeded(QmanjaRiderAuthUser(loggedIn: false));
Stream<QmanjaRiderAuthUser> qmanjaRiderAuthUserStream() =>
    qmanjaRiderAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
