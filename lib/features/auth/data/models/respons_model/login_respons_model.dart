import 'package:json_annotation/json_annotation.dart';
part 'login_respons_model.g.dart';

@JsonSerializable()
class LoginResponsModel {
  String? accessToken;
  DateTime? expiresAtUtc;
  String? refreshToken;

  LoginResponsModel({this.accessToken, this.expiresAtUtc, this.refreshToken});

  factory LoginResponsModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponsModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponsModelToJson(this);
}



