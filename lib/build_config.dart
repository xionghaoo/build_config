import 'dart:async';

import 'package:flutter/services.dart';

class BuildConfig {
  static const MethodChannel _channel =
      const MethodChannel('com.pgy/build_config');

  static Future<String> get versionName async {
    final String versionName = await _channel.invokeMethod('versionName');
    return versionName;
  }

  static Future<int> get versionCode async {
    final int versionCode = await _channel.invokeMethod('versionCode');
    return versionCode;
  }
}
