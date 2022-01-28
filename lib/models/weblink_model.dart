// To parse this JSON data, do
//
//     final weblinkModel = weblinkModelFromJson(jsonString);

import 'dart:convert';

List<WeblinkModel> weblinkModelFromJson(String str) => List<WeblinkModel>.from(json.decode(str).map((x) => WeblinkModel.fromJson(x)));

String weblinkModelToJson(List<WeblinkModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class WeblinkModel {
  WeblinkModel({
    this.id,
    this.name,
    this.link,
  });

  int? id;
  String? name;
  String? link;

  factory WeblinkModel.fromJson(Map<String, dynamic> json) => WeblinkModel(
    id: json["id"],
    name: json["name"],
    link: json["link"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "link": link,
  };
}
