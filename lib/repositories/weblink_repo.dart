import 'package:bmcah/models/weblink_model.dart';
import 'package:flutter/services.dart';

class WeblinkRepo{
static Future <List<WeblinkModel>> getWeblinks() async{
  final response= await rootBundle.loadString("assets/json/web_link.json");
  if(response==null){
    return[];
  }
  else{

  return weblinkModelFromJson(response);
  }
}
}