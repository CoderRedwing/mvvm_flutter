
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:mvvm/data/app_excaption.dart';
import 'package:mvvm/data/network/base_api_services.dart';
import 'package:http/http.dart'as http;

class NetworkApiService extends BaseApiServices {
  @override
  Future getApiResponse(String url) async {
    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(url)).timeout(
          Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('Ni internet connection');
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadDataException(response.body.toString());
      case 404:
        throw UnauthorisedException(response.body.toString());
      default:
        throw FetchDataException('Error occurred in communicating with server' +
            'with status code' + response.statusCode.toString());
    }
  }

  @override
  Future getPostApiResponse(String url, dynamic data) async {
    dynamic responseJson;
    try {
      Response response = await post(Uri.parse(url),
          body: data
      ).timeout(Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('Ni internet connection');
    }
    return responseJson;
  }
}
  dynamic returnResponse(http.Response response){
    switch(response.statusCode){
      case 200:
    dynamic responseJson=jsonDecode(response.body);
    return responseJson;
      case 400:
        throw BadDataException(response.body.toString());
      case 404:
        throw UnauthorisedException(response.body.toString());
      default:
        throw FetchDataException('Error occurred in communicating with server'+
            'with status code'+response.statusCode.toString());
    }
  }


