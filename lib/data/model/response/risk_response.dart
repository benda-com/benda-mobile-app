import 'dart:convert';

RiskResponse riskResponseFromJson(String str) =>
    RiskResponse.fromJson(json.decode(str));

String riskResponseToJson(RiskResponse data) => json.encode(data.toJson());

class RiskResponse {
  double? risk;
  String? conclusion;

  RiskResponse({
    this.risk,
    this.conclusion,
  });

  factory RiskResponse.fromJson(Map<String, dynamic> json) => RiskResponse(
        risk: json["risk"].toDouble(),
        conclusion: json["conclusion"],
      );

  Map<String, dynamic> toJson() => {
        "risk": risk,
        "conclusion": conclusion,
      };
}
