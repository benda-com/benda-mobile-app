import 'dart:convert';

UserResponse UserResponseFromJson(String str) =>
    UserResponse.fromJson(json.decode(str));

String UserResponseToJson(UserResponse data) => json.encode(data.toJson());

class UserResponse {
  int id;
  String password;
  String? lastLogin;
  bool isSuperuser;
  String firstName;
  String lastName;
  String email;
  int? followId;
  DateTime dateOfBirth;
  String phoneNumber;
  bool isActive;
  bool isStaff;
  bool isGynecologist;
  bool isPregnantWoman;
  int? pregnantWomanPrenancyWeek;
  String? hospital;
  String? licenseNumber;
  DateTime createdAt;
  DateTime updatedAt;
  List<dynamic> groups;
  List<dynamic> userPermissions;

  UserResponse({
    required this.id,
    required this.password,
    required this.lastLogin,
    required this.isSuperuser,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.followId,
    required this.dateOfBirth,
    required this.phoneNumber,
    required this.isActive,
    required this.isStaff,
    required this.isGynecologist,
    required this.isPregnantWoman,
    required this.pregnantWomanPrenancyWeek,
    required this.hospital,
    required this.licenseNumber,
    required this.createdAt,
    required this.updatedAt,
    required this.groups,
    required this.userPermissions,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
        id: json["id"],
        password: json["password"],
        lastLogin: json["last_login"],
        isSuperuser: json["is_superuser"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        followId: json["follow_id"],
        dateOfBirth: DateTime.parse(json["date_of_birth"]),
        phoneNumber: json["phone_number"],
        isActive: json["is_active"],
        isStaff: json["is_staff"],
        isGynecologist: json["is_gynecologist"],
        isPregnantWoman: json["is_pregnant_woman"],
        pregnantWomanPrenancyWeek: json["pregnant_woman_prenancy_week"],
        hospital: json["hospital"],
        licenseNumber: json["license_number"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        groups: List<dynamic>.from(json["groups"].map((x) => x)),
        userPermissions:
            List<dynamic>.from(json["user_permissions"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "password": password,
        "last_login": lastLogin,
        "is_superuser": isSuperuser,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "follow_id": followId,
        "date_of_birth":
            "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
        "phone_number": phoneNumber,
        "is_active": isActive,
        "is_staff": isStaff,
        "is_gynecologist": isGynecologist,
        "is_pregnant_woman": isPregnantWoman,
        "pregnant_woman_prenancy_week": pregnantWomanPrenancyWeek,
        "hospital": hospital,
        "license_number": licenseNumber,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "groups": List<dynamic>.from(groups.map((x) => x)),
        "user_permissions": List<dynamic>.from(userPermissions.map((x) => x)),
      };
}
