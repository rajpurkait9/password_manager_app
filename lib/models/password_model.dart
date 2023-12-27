class PasswordModel {
  PasswordModel({
    required this.id,
    required this.password,
    required this.website,
    required this.note,
    required this.user,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  String id;
  String password;
  String website;
  String note;
  String user;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  factory PasswordModel.fromJson(Map<String, dynamic> json) => PasswordModel(
        id: json["_id"],
        password: json["password"],
        website: json["website"],
        note: json["note"],
        user: json["user"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "password": password,
        "website": website,
        "note": note,
        "user": user,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
      };
}
