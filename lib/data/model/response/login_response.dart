import 'dart:convert';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  int id;
  String token;
  String firstName;
  String lastName;
  String email;
  int? followId;
  DateTime dateOfBirth;
  String phoneNumber;
  int? pregnantWomanPrenancyWeek;
  String? hospital;
  String? licenseNumber;
  bool? isGynecologist;

  LoginResponse({
    required this.id,
    required this.token,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.followId,
    required this.dateOfBirth,
    required this.phoneNumber,
    required this.pregnantWomanPrenancyWeek,
    required this.hospital,
    required this.licenseNumber,
    required this.isGynecologist,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        id: json["id"],
        token: json["token"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        followId: json["follow_id"],
        dateOfBirth: DateTime.parse(json["date_of_birth"]),
        phoneNumber: json["phone_number"],
        pregnantWomanPrenancyWeek: json["pregnant_woman_prenancy_week"],
        hospital: json["hospital"],
        licenseNumber: json["license_number"],
        isGynecologist: json["is_gynecologist"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "token": token,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "follow_id": followId,
        "date_of_birth":
            "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
        "phone_number": phoneNumber,
        "pregnant_woman_prenancy_week": pregnantWomanPrenancyWeek,
        "hospital": hospital,
        "license_number": licenseNumber,
        "is_gynecologist": isGynecologist,
      };
}
