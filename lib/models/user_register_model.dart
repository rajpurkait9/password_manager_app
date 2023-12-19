import 'dart:convert';

UserRegisterModel userRegisterModelFromJson(String str) =>
    UserRegisterModel.fromJson(json.decode(str));

String userRegisterModelToJson(UserRegisterModel data) =>
    json.encode(data.toJson());

class UserRegisterModel {
  UserRegisterModel({
    required this.name,
    required this.email,
    required this.password,
    required this.mobileNumber,
  });

  String name;
  String email;
  String password;
  String mobileNumber;

  factory UserRegisterModel.fromJson(Map<String, dynamic> json) =>
      UserRegisterModel(
        name: json["name"],
        email: json["email"],
        password: json["password"],
        mobileNumber: json["mobileNumber"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "password": password,
        "mobileNumber": mobileNumber,
      };
}
