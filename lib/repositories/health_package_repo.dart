import 'dart:convert';

import 'package:bmcah/models/health_package_model.dart';
import 'package:flutter/services.dart';

class HealthPackageRepo {
  static Future<List<HealthPackageModel>> getPackageList() async {
    final respose = await rootBundle.loadString('assets/json/health_package.json');
    if (respose != null) {
      List<dynamic> health = await json.decode(respose);
      List<HealthPackageModel> packageList =
      health.map((e) => HealthPackageModel.fromJson(e)).toList();
      return packageList;
    } else {
      return [];
    }
  }
}
