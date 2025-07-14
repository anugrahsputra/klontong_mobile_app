import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:klontong_mobile_app/core/core.dart';

import '../di.dart';
import 'app_cubit.dart';

class AppSplash extends StatefulWidget {
  const AppSplash({super.key});

  @override
  State<AppSplash> createState() => _AppSplashState();
}

class _AppSplashState extends State<AppSplash> {
  final AppNavigator appNavigator = di<AppNavigator>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppCubit>(
      create: (context) => di<AppCubit>(),
      child: BlocListener<AppCubit, AppStatus>(
        listener: (context, state) {
          if (state == AppStatus.authenticated) {
            appNavigator.goToProduct(context);
          } else if (state == AppStatus.unauthenticated) {
            appNavigator.goToLogin(context);
          }
        },
        child: const Scaffold(
          body: Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}