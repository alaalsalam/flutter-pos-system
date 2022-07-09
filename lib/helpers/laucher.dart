import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as l;

class Launcher {
  @visibleForTesting
  static late String lastUrl;

  static Future<bool> launch(String url) {
    assert(() {
      lastUrl = url;
      return true;
    }());
    return l.launch(url);
  }
}
