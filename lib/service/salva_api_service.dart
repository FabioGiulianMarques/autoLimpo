import 'dart:convert';

import 'package:dio/dio.dart';

class SalvaAPIService {
  static const URI = "https://jsonplaceholder.typicode.com/users/";
  //"http://10.0.2.2/salva";

  static Future<void> salvaDados(nome, rua,no,bairro,referencia) async {
    try {
      var response = await Dio().post('$URI', data: {'name': nome, 'username':rua, 'email': bairro});
      
     // Map<String, dynamic> data = {"salva": response.data};
      //Validando a senha como se fosse o id
      
      print(response);
      
    } catch (e) {
      print(e);
    }
  }
}
