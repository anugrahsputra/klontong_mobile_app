import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:klontong_mobile_app/core/core.dart';
import 'package:klontong_mobile_app/di.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'app.dart';

Future<void> appInitialize() async {
  await SentryFlutter.init(
    (options) {
      options.dsn = 'https://6a77229fd06b99250be93043722f17b6@o4508516549984256.ingest.us.sentry.io/4508516551753728';
      // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
      // We recommend adjusting this value in production.
      options.tracesSampleRate = 1.0;
    },
    appRunner: () async {
      AppLogging.initialize(showLog: true);
      Bloc.observer = AppBlocObserver();
      await setup();
      runApp(MyApp());
    },
  );
}