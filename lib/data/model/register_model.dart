import 'dart:convert';

class RegisterModel {
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? dateOfBirth;
  final String? phoneNumber;
  final String? password;
  final String? licenseNumber;
  final String? hospital;
  final int? pregnantWomanPrenancyWeek;
  final bool? isGynecologist;
  final bool? isPregnantWoman;

  RegisterModel(
      {this.firstName,
      this.lastName,
      this.email,
      this.dateOfBirth,
      this.phoneNumber,
      this.password,
      this.isGynecologist,
      this.isPregnantWoman,
      this.pregnantWomanPrenancyWeek,
      this.hospital,
      this.licenseNumber});

  factory RegisterModel.fromRawJson(String str) =>
      RegisterModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        dateOfBirth: json["date_of_birth"],
        phoneNumber: json["phone_number"],
        password: json["password"],
        isGynecologist: json["is_gynecologist"],
        isPregnantWoman: json["is_pregnant_woman"],
        pregnantWomanPrenancyWeek: json["pregnant_woman_prenancy_week"],
        hospital: json["hospital"],
        licenseNumber: json["license_number"],
      );

  Map<String, dynamic> toJson() => {
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "date_of_birth": dateOfBirth,
        "phone_number": phoneNumber,
        "password": password,
        "is_gynecologist": isGynecologist,
        "is_pregnant_woman": isPregnantWoman,
        "pregnant_woman_prenancy_week": pregnantWomanPrenancyWeek,
        "hospital": hospital,
        "license_number": licenseNumber
      };
}
