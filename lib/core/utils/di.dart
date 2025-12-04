import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:turbo/core/net_work/dio_factory.dart';
import 'package:turbo/features/auth/data/repo/auth_repo.dart';
import 'package:turbo/features/auth/data/services/auth_services.dart';

final getIt = GetIt.instance;

setupDi() {
  _setupAuth();
}

_setupAuth() {
  getIt.registerSingleton<Dio>(DioFactory().dio);
  getIt.registerSingleton<AuthServices>(AuthServices(getIt<Dio>()));
  getIt.registerSingleton<AuthRepo>(AuthRepo(services: getIt<AuthServices>()));
}
