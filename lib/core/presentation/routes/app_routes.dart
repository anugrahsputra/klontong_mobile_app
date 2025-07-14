import 'package:flutter/cupertino.dart';
import 'package:klontong_mobile_app/app/app.dart';
import 'package:klontong_mobile_app/core/core.dart';
import 'package:klontong_mobile_app/features/auth/auth.dart';
import 'package:klontong_mobile_app/features/general/general.dart';
import 'package:klontong_mobile_app/features/product/product.dart';

abstract class AppRoutes {
  static String get initial => AppPages.splash;

  static final Map<String, Widget Function(BuildContext context)> routes = {
    AppPages.splash: (context) => const AppSplash(),
    AppPages.login: (context) => const LoginView(),
    AppPages.register: (context) => const RegisterView(),

    AppPages.main: (context) => const MainView(),
    AppPages.product: (context) => const ProductView(),
    AppPages.productDetail: (context) {
      Map<String, dynamic> args =
          ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
      final String id = args["id"];
      return ProductDetailView(id: id);
    },

    AppPages.addProduct: (context) => const AddProductView(),
    AppPages.searchProduct: (context) => SearchProductView(),
  };
}