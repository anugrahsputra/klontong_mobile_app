import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:klontong_mobile_app/core/core.dart';
import 'package:klontong_mobile_app/di.dart';

import 'app.dart';

Future<void> appInitialize() async {
  AppLogging.initialize(showLog: true);
  Bloc.observer = AppBlocObserver();
  await setup();

  runApp(MyApp());
}

