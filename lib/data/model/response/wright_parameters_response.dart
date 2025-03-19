import 'dart:convert';

class WrightParametersResponse {
  final int? id;
  final String? owner;
  final int? age;
  final String? origin;
  final double? chronicHypertension;
  final double? height;
  final double? sle;
  final double? inVitroConception;
  final double? parousPe;
  final double? parousPeDifference;
  final double? parousNoPe;
  final double? parousNoPeInterval;
  final double? parousNoPeDifference;
  final double? weight;
  final double? familyHistoryPe;
  final double? diabetes;
  final DateTime? created;
  final DateTime? updated;

  WrightParametersResponse({
    this.id,
    this.owner,
    this.age,
    this.origin,
    this.chronicHypertension,
    this.height,
    this.sle,
    this.inVitroConception,
    this.parousPe,
    this.parousPeDifference,
    this.parousNoPe,
    this.parousNoPeInterval,
    this.parousNoPeDifference,
    this.weight,
    this.familyHistoryPe,
    this.diabetes,
    this.created,
    this.updated,
  });

  factory WrightParametersResponse.fromRawJson(String str) =>
      WrightParametersResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WrightParametersResponse.fromJson(Map<String, dynamic> json) =>
      WrightParametersResponse(
        id: json["id"],
        owner: json["owner"],
        age: json["age"],
        origin: json["origin"],
        chronicHypertension: json["chronic_hypertension"],
        height: json["height"],
        sle: json["sle"],
        inVitroConception: json["in_vitro_conception"],
        parousPe: json["parous_pe"],
        parousPeDifference: json["parous_pe_difference"],
        parousNoPe: json["parous_no_pe"],
        parousNoPeInterval: json["parous_no_pe_interval"],
        parousNoPeDifference: json["parous_no_pe_difference"],
        weight: json["weight"],
        familyHistoryPe: json["family_history_pe"],
        diabetes: json["diabetes"],
        created: DateTime.parse(json["created"]),
        updated: DateTime.parse(json["updated"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "owner": owner,
        "age": age,
        "origin": origin,
        "chronic_hypertension": chronicHypertension,
        "height": height,
        "sle": sle,
        "in_vitro_conception": inVitroConception,
        "parous_pe": parousPe,
        "parous_pe_difference": parousPeDifference,
        "parous_no_pe": parousNoPe,
        "parous_no_pe_interval": parousNoPeInterval,
        "parous_no_pe_difference": parousNoPeDifference,
        "weight": weight,
        "family_history_pe": familyHistoryPe,
        "diabetes": diabetes,
        "created": created?.toIso8601String(),
        "updated": updated?.toIso8601String(),
      };
}
