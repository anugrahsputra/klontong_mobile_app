import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:klontong_mobile_app/core/core.dart';

enum AppStatus { initial, loading, authenticated, unauthenticated }

class AppCubit extends Cubit<AppStatus> {
  final TokenManager tokenManager;

  AppCubit({required this.tokenManager}) : super(AppStatus.initial) {
    _checkToken();
  }

  Future<void> _checkToken() async {
    emit(AppStatus.loading);
    final token = await tokenManager.getToken();
    if (token != null && token.isNotEmpty) {
      emit(AppStatus.authenticated);
    } else {
      emit(AppStatus.unauthenticated);
    }
  }

  Future<void> logout() async {
    await tokenManager.deleteToken();
    emit(AppStatus.unauthenticated);
  }
}