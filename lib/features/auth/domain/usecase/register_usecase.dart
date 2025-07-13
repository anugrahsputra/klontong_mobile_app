import 'package:dartz/dartz.dart';
import 'package:klontong_mobile_app/core/core.dart';
import 'package:klontong_mobile_app/features/auth/auth.dart';

class RegisterUsecase {
  final AuthRepository repository;

  RegisterUsecase({required this.repository});

  Future<Either<Failure, Register>> execute(RegisterReqDto registerReq) async {
    return await repository.register(registerReq);
  }
}

