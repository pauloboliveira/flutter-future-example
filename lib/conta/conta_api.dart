import 'package:http/http.dart' as http;
import 'dart:convert';

import 'conta.dart';

class ContaApi {


  static Future<Conta> getConta() async {
    try {
      var url = "http://localhost:8080/conta/1";

      var response = await http.get(url);

      //response.body me traz a String que contém no JSON
      Map mapContaResponse = json.decode(response.body);

      Conta conta = Conta.fromJson(mapContaResponse);

      return conta;
    } catch (error) {
      print(error);
      return null;
    }
  }
}
