import 'package:background_locator_2/background_locator.dart';
import 'package:background_locator_2/settings/locator_settings.dart';
import 'package:flutter/material.dart';
import 'location_callback.dart';

class LocationService {
  static Future<void> init() async {
    await BackgroundLocator.initialize();
    await BackgroundLocator.registerLocationUpdate(
      LocationCallbackHandler.callback,
      initCallback: LocationCallbackHandler.initCallback,
      disposeCallback: LocationCallbackHandler.disposeCallback,
      iosSettings: IOSSettings(accuracy: LocationAccuracy.NAVIGATION),
      autoStop: false,
      androidSettings: AndroidSettings(
        accuracy: LocationAccuracy.NAVIGATION,
        interval: 10,
        distanceFilter: 0,
        client: LocationClient.google,
        androidNotificationSettings: AndroidNotificationSettings(
          notificationChannelName: 'Location tracking',
          notificationTitle: 'App is tracking location',
          notificationMsg: 'Background location tracking is active',
          notificationIcon: '',
        ),
      ),
    );
  }

  static Future<void> stop() async {
    await BackgroundLocator.unRegisterLocationUpdate();
  }
}
