import 'dart:convert';

class RegisterResponse {
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? dateOfBirth;
  final String? phoneNumber;
  final String? password;
  final bool? isGynecologist;
  final bool? isPregnantWoman;

  RegisterResponse({
    this.firstName,
    this.lastName,
    this.email,
    this.dateOfBirth,
    this.phoneNumber,
    this.password,
    this.isGynecologist,
    this.isPregnantWoman,
  });

  factory RegisterResponse.fromRawJson(String str) => RegisterResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RegisterResponse.fromJson(Map<String, dynamic> json) => RegisterResponse(
    firstName: json["first_name"],
    lastName: json["last_name"],
    email: json["email"],
    dateOfBirth: json["date_of_birth"],
    phoneNumber: json["phone_number"],
    password: json["password"],
    isGynecologist: json["is_gynecologist"],
    isPregnantWoman: json["is_pregnant_woman"],
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
  };
}
