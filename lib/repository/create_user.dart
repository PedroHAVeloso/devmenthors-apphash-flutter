import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

createUser(String email, String nome, String senha) async {
  log("oi");
  var url = Uri.parse(
      'http://ec2-44-211-218-227.compute-1.amazonaws.com:8080/api/cliente/create');

  final response = await http.post(
    url,
    headers: {"Content-Type": "application/json"},
    body: jsonEncode(
      {
        "email": email,
        "nome": nome,
        "senha": senha,
      },
    ),
  );

  log(response.statusCode.toString());
  log(response.body);
}
