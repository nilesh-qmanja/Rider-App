import 'dart:isolate';
import 'dart:ui';
import 'package:background_locator_2/location_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocationCallbackHandler {
  static const String isolateName = 'LocatorIsolate';
  static SendPort? uiSendPort;

  static Future<void> initCallback() async {
    print('*** initCallback');
  }

  static Future<void> disposeCallback() async {
    print('*** disposeCallback');
  }

  static Future<void> callback(LocationDto locationDto) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
        'last_location', '${locationDto.latitude},${locationDto.longitude}');
    print(
        'Background location: ${locationDto.latitude}, ${locationDto.longitude}');
  }
}
