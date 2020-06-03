import 'package:http/http.dart' as http;
import 'dart:convert';

import 'conta.dart';

class ContaApi {


  static Future<Conta> getConta() async {

    await Future.delayed(Duration(seconds: 3));
    try {
      var url = "http://172.16.8.38:8080/conta/1";

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
