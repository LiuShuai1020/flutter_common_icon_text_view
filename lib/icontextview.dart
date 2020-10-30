import 'dart:async';

import 'package:flutter/services.dart';

class Icontextview {
  static const MethodChannel _channel =
      const MethodChannel('icontextview');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
