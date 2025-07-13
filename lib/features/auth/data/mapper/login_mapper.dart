import 'package:klontong_mobile_app/features/auth/auth.dart';

extension LoginMapper on LoginRespDto {
  Login toLogin() {
    return Login(token: token);
  }
}

