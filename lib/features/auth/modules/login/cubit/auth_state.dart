part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final LoginResponsModel respons;
  AuthSuccess({required this.respons});
}

class AuthFailure extends AuthState {
  final ApiErrorModel e;
  AuthFailure({required this.e});
}
