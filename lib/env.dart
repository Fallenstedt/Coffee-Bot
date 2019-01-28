import 'package:flutter/material.dart';
import 'src/app.dart';

class Env {
  static Env value;
  String url;

  Env() {
    value = this;
    runApp(App(this));
  }

  String get name => runtimeType.toString();
}
