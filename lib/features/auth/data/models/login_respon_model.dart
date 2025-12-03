class LoginResponsModel {
  String? accessToken;
  DateTime? expiresAtUtc;
  String? refreshToken;

  LoginResponsModel({this.accessToken, this.expiresAtUtc, this.refreshToken});

  factory LoginResponsModel.fromJson(Map<String, dynamic> json) => LoginResponsModel(
    accessToken: json["accessToken"],
    expiresAtUtc: json["expiresAtUtc"] == null
        ? null
        : DateTime.parse(json["expiresAtUtc"]),
    refreshToken: json["refreshToken"],
  );

  Map<String, dynamic> toJson() => {
    "accessToken": accessToken,
    "expiresAtUtc": expiresAtUtc?.toIso8601String(),
    "refreshToken": refreshToken,
  };
}
