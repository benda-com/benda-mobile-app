import 'dart:convert';

RegisterResponse registerResponseFromJson(String str) =>
    RegisterResponse.fromJson(json.decode(str));

String registerResponseToJson(RegisterResponse data) =>
    json.encode(data.toJson());

class RegisterResponse {
  int id;
  String firstName;
  String lastName;
  String email;
  DateTime dateOfBirth;
  String phoneNumber;
  bool isGynecologist;
  bool isPregnantWoman;
  int? pregnantWomanPrenancyWeek;
  String? hospital;
  int? followId;
  String? licenseNumber;

  RegisterResponse({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.dateOfBirth,
    required this.phoneNumber,
    required this.isGynecologist,
    required this.isPregnantWoman,
    required this.pregnantWomanPrenancyWeek,
    required this.hospital,
    required this.followId,
    required this.licenseNumber,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      RegisterResponse(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        dateOfBirth: DateTime.parse(json["date_of_birth"]),
        phoneNumber: json["phone_number"],
        isGynecologist: json["is_gynecologist"],
        isPregnantWoman: json["is_pregnant_woman"],
        pregnantWomanPrenancyWeek: json["pregnant_woman_prenancy_week"],
        hospital: json["hospital"],
        followId: json["follow_id"],
        licenseNumber: json["license_number"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "date_of_birth":
            "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
        "phone_number": phoneNumber,
        "is_gynecologist": isGynecologist,
        "is_pregnant_woman": isPregnantWoman,
        "pregnant_woman_prenancy_week": pregnantWomanPrenancyWeek,
        "hospital": hospital,
        "follow_id": followId,
        "license_number": licenseNumber,
      };
}
