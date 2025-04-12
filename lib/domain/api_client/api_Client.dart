import 'package:dio/dio.dart';
import 'dart:io';
import 'package:http/http.dart' as http;



  void getHttp() async {
    Dio dio = Dio();
    var response =
        await http.get('http://151.248.122.183:1001/swagger/index.html');
  }

