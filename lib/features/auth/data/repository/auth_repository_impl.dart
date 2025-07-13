import 'package:dartz/dartz.dart';
import 'package:logging/logging.dart';
import 'package:klontong_mobile_app/core/core.dart';
import 'package:klontong_mobile_app/features/auth/auth.dart';
import 'package:klontong_mobile_app/features/auth/data/datasource/auth_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource dataSource;
  final Logger log = Logger("Auth Repository");

  AuthRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, Login>> login(LoginReqDto loginReq) async {
    final result = await dataSource.login(loginReq);
    return result.fold(
      (failure) => Left(failure),
      (data) => Right(data.toLogin()),
    );
  }

  @override
  Future<Either<Failure, Register>> register(RegisterReqDto registerReq) async {
    final result = await dataSource.register(registerReq);
    return result.fold(
      (failure) => Left(failure),
      (data) => Right(data.toRegister()),
    );
  }
}
