import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:mi_card/models/owner_model.dart';

class ServiceApi {


  Future<List<Owner>> getResume() async {
    var ownerModel;
    try {
      http.Response res = await http.get(Uri.parse('https://api.github.com/users/BobyBiju'));

      if (res.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(res.body);
        List<dynamic> body = json[0];
        List<Owner> ownerModel = body.map<Owner>((dynamic item) {
          return Owner.fromJson(item);
        }).toList();
        return ownerModel;
      }
    }
    catch (e) {
      return ownerModel;
    }
    return ownerModel;
  }
}