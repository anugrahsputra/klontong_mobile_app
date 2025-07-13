import 'package:flutter/cupertino.dart';
import 'package:klontong_mobile_app/core/core.dart';
import 'package:klontong_mobile_app/features/auth/auth.dart';
import 'package:klontong_mobile_app/features/general/general.dart';
import 'package:klontong_mobile_app/features/product/product.dart';

abstract class AppRoutes {
  static String get initial => AppPages.login;

  static final Map<String, Widget Function(BuildContext context)> routes = {
    AppPages.login: (context) => const LoginView(),
    AppPages.register: (context) => const RegisterView(),

    AppPages.main: (context) => const MainView(),
    AppPages.product: (context) => const ProductView(),
  };
}
