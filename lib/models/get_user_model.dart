// class GetAllUserSingleModel {
//   GetAllUserSingleModel({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.password,
//     required this.mobileNumber,
//     required this.createdAt,
//     required this.updatedAt,
//   });

//   String id;
//   String name;
//   String email;
//   String password;
//   String mobileNumber;
//   DateTime createdAt;
//   DateTime updatedAt;

//   factory GetAllUserSingleModel.fromJson(Map<String, dynamic> json) =>
//       GetAllUserSingleModel(
//         id: json["_id"],
//         name: json["name"],
//         email: json["email"],
//         password: json["password"],
//         mobileNumber: json["mobileNumber"],
//         createdAt: DateTime.parse(json["createdAt"]),
//         updatedAt: DateTime.parse(json["updatedAt"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "_id": id,
//         "name": name,
//         "email": email,
//         "password": password,
//         "mobileNumber": mobileNumber,
//         "createdAt": createdAt.toIso8601String(),
//         "updatedAt": updatedAt.toIso8601String(),
//       };
// }

class GetAllUserSingleModel {
  String? sId;
  String? name;
  String? email;
  String? password;
  String? phone;
  String? role;
  String? createdAt;
  String? updatedAt;
  int? iV;

  GetAllUserSingleModel(
      {this.sId,
      this.name,
      this.email,
      this.password,
      this.phone,
      this.role,
      this.createdAt,
      this.updatedAt,
      this.iV});

  GetAllUserSingleModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    role = json['role'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['email'] = email;
    data['password'] = password;
    data['phone'] = phone;
    data['role'] = role;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    return data;
  }
}
