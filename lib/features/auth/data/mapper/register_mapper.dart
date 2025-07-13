import 'package:klontong_mobile_app/features/auth/auth.dart';

extension RegisterMapper on RegisterRespDto {
  Register toRegister() {
    return Register(id: id, token: token);
  }
}

