import 'package:flutter/material.dart';
import "package:flutter_driver/driver_extension.dart";

import 'app.dart';

import 'modules/core/configure_dependencies.dart';

void main() {
  enableFlutterDriverExtension();

  configureDependencies();
  runApp(MyApp());
}
