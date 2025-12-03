class LoginReqwestModel {
  final String email;
  final String password;

  LoginReqwestModel({required this.email, required this.password});

  Map<String, dynamic> toJson() {
    return {'email': email, 'password': password};
  }
}
