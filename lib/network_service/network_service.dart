import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/user_model.dart';

class NetWorkService {
  final String ApiuserURL = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=rum";

  Future<List<Drinks>> getUserList() async {
    http.Response res =
        await http.get(Uri.parse(ApiuserURL));
if (res.statusCode == 200) {
      user_model users = user_model.fromJson(jsonDecode(res.body));
      List<Drinks> drinkslist= users.drinks??[];
     

      return drinkslist;
    } else {
      throw "Unable to retrieve posts.";
    }
  }
}
