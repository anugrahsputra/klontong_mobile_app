import 'package:dartz/dartz.dart';
import 'package:logging/logging.dart';
import 'package:klontong_mobile_app/core/core.dart';
import 'package:klontong_mobile_app/features/auth/data/data.dart';

abstract class AuthDataSource {
  Future<Either<Failure, LoginRespDto>> login(LoginReqDto loginReq);

  Future<Either<Failure, RegisterRespDto>> register(RegisterReqDto registerReq);
}

class AuthDataSourceImpl implements AuthDataSource {
  final NetworkClient dioClient;
  final Logger log = Logger("Auth Data Source");

  AuthDataSourceImpl({required this.dioClient});

  @override
  Future<Either<Failure, LoginRespDto>> login(LoginReqDto loginReq) async {
    return await dioClient.postParsedSafe<LoginRespDto>(
      ApiEndpoints.login,
      data: loginReq.toJson(),
      converter: (json) => LoginRespDto.fromJson(json),
    );
  }

  @override
  Future<Either<Failure, RegisterRespDto>> register(
    RegisterReqDto registerReq,
  ) async {
    return await dioClient.postParsedSafe<RegisterRespDto>(
      ApiEndpoints.register,
      data: registerReq.toJson(),
      converter: (json) => RegisterRespDto.fromJson(json),
    );
  }
}
