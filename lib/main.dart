import 'package:flutter/material.dart';
import 'package:klontong_mobile_app/app/app_initialize.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await appInitialize();
}

