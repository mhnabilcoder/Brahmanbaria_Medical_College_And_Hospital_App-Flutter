
class HealthPackageModel {

  int? id;
  String? name;
  String? price;
  String? detail;

  HealthPackageModel({
    this.id,
    this.name,
    this.price,
    this.detail,
  });


  factory HealthPackageModel.fromJson(Map<String, dynamic> json) => HealthPackageModel(
    id: json["id"],
    name: json["name"],
    price: json["price"],
    detail: json["detail"],
  );


}