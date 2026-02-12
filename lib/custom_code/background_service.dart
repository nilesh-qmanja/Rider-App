import 'dart:ui';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_background_service_android/flutter_background_service_android.dart';
import 'package:geolocator/geolocator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void initializeService() async {
  final service = FlutterBackgroundService();

  await service.configure(
    androidConfiguration: AndroidConfiguration(
      onStart: onStart,
      autoStart: true,
      isForegroundMode: true,
      notificationTitle: 'Tracking Location',
      notificationText: 'Location updates running...',
    ),
    iosConfiguration: IosConfiguration(
      onForeground: onStart,
    ),
  );

  service.startService();
}

@pragma('vm:entry-point')
void onStart(ServiceInstance service) {
  if (service is AndroidServiceInstance) {
    service.setAsForegroundService();
    service.setNotificationInfo(
      title: "Location Service",
      content: "Tracking location in background",
    );
  }

  service.on('stopService').listen((event) {
    service.stopSelf();
  });

  // update location every 15 seconds
  Timer.periodic(Duration(seconds: 15), (timer) async {
    Position position = await Geolocator.getCurrentPosition();

    // Update to Firestore or any backend
    FirebaseFirestore.instance.collection('location').doc('riderID').set({
      'lat': position.latitude,
      'long': position.longitude,
      'timestamp': DateTime.now().toIso8601String(),
    });
  });
}
