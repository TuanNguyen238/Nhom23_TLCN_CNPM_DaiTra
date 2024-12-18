import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class MedicareAppointmentAuthUser {
  MedicareAppointmentAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<MedicareAppointmentAuthUser>
    medicareAppointmentAuthUserSubject =
    BehaviorSubject.seeded(MedicareAppointmentAuthUser(loggedIn: false));
Stream<MedicareAppointmentAuthUser> medicareAppointmentAuthUserStream() =>
    medicareAppointmentAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
