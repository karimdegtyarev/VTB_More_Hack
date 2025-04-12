import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

void main() {

}

void getHttp() async {
  Response response;
  var dio = Dio();
  response = await dio.get('/test?id=12&name=wendu');
  print(response.data.toString());
// Optionally the request above could also be done as
  response = await dio.get('/test', queryParameters: {'id': 12, 'name': 'wendu'});
  print(response.data.toString());
}

