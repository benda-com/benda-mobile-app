class ErrorResponse {
  List<Errors>? errors;

  ErrorResponse({
    this.errors,
  });

  ErrorResponse.fromJson(dynamic json) {
    if (json["errors"] != null) {
      errors = [];
      json["errors"].forEach((v) {
        errors!.add(Errors.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (errors != null) {
      map["errors"] = errors!.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Errors {
  String? code;
  String? message;

  Errors({this.code, this.message});

  Errors.fromJson(dynamic json) {
    code = json["code"];
    message = json["message"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["code"] = code;
    map["message"] = message;
    return map;
  }
}
