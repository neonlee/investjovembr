import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';

class Api extends DioForNative {
  final String urlBase = "https://jsonplaceholder.typicode.com";

  Api([BaseOptions options]) : super(options){
    options.baseUrl = urlBase;
  }
}
