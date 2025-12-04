import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:turbo/core/net_work/api_error_model.dart';
import 'package:turbo/features/auth/data/models/requst_model/login_request_model.dart';
import 'package:turbo/features/auth/data/models/respons_model/login_respons_model.dart';
import 'package:turbo/features/auth/data/repo/auth_repo.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({required this.repo}) : super(AuthInitial());

  final AuthRepo repo;

  login(LoginRequestModel request) async {
    emit(AuthLoading());
    final result = await repo.login(request);
    result.fold(
      (e) {
        emit(AuthFailure(e: e));
      },
      (success) {
        emit(AuthSuccess(respons: success));
      },
    );
  }
}
