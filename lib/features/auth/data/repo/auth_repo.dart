import 'package:dartz/dartz.dart';
import 'package:turbo/core/net_work/api_error_handler.dart';
import 'package:turbo/core/net_work/api_error_model.dart';
import 'package:turbo/features/auth/data/models/requst_model/login_request_model.dart';
import 'package:turbo/features/auth/data/models/respons_model/login_respons_model.dart';
import 'package:turbo/features/auth/data/services/auth_services.dart';

class AuthRepo {
  final AuthServices services;
  AuthRepo({required this.services});

  Future<Either<ApiErrorModel, LoginResponsModel>> login(
    LoginRequestModel request,
  ) async {
    try {
      final respons = await services.login(request: request);
      return Right(respons);
    } catch (e) {
      ApiErrorHandler.handler(e);
      return Left(ApiErrorHandler.handler(e));
    }
  }
}
