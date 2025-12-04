import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:turbo/core/constans/app_Strings.dart';
import 'package:turbo/features/auth/data/models/requst_model/login_request_model.dart';
import 'package:turbo/features/auth/data/models/respons_model/login_respons_model.dart';

part 'auth_services.g.dart';

@RestApi(baseUrl: AppStrings.baseUrl)
abstract class AuthServices {
  factory AuthServices(Dio dio) = _AuthServices;

  @POST("auth/login")
  Future<LoginResponsModel> login({@Body() required LoginRequestModel request});
}
