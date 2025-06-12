import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:driver_mobile/service/api_service/api_endpoint.dart';
import 'package:driver_mobile/service/get_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;


import 'app_exception.dart';

enum APIType { aPost, aGet, aPut, aPatch }

class APIService {
  var response;

  Future getResponse(
      {required String url,
      required APIType apitype,
      Map<String, dynamic>? body,
      Map<String, String>? header,
      bool fileUpload = false}) async {
    Map<String, String> headers = {
      "Content-Type": "application/json",
      "accept": "text/plain",
      "Authorization": "Bearer ${GetStorageServices.getFcmToken()}",
      // "Authorization": "Bearer ${GetStorageServices.getFcmToken()}",
    };

    try {
      response=null;
      if (apitype == APIType.aGet) {

        print("RES URL ${BaseUrl.baseUrl + url}");
        final result =
            await http.get(Uri.parse(BaseUrl.baseUrl + url), headers: headers);
        response = returnResponse(result.statusCode, result.body);
        if (result.statusCode == '401') {}
        log("RES status code ${result.statusCode}");

        log("res${result.body}");
      } else if (apitype == APIType.aPost) {
        response=null;
        print("REQUEST PARAMETER url  $url");
        print("REQUEST PARAMETER $body");

        final result = await http.post(Uri.parse(BaseUrl.baseUrl + url),
            body: json.encode(body), headers: headers);
        print("resp::body::${result.body}");
        response = returnResponse(result.statusCode, result.body);
        print(result.statusCode);
      } else if (apitype == APIType.aPut) {
        print("REQUEST PARAMETER url  $url");
        print("REQUEST PARAMETER $body");

        final result = await http.put(Uri.parse(BaseUrl.baseUrl + url),
            body: json.encode(body), headers: headers);
        print("resp${result.body}");
        response = returnResponse(result.statusCode, result.body);
        print(result.statusCode);
      } else {
        print("REQUEST PARAMETER url  $url");
        print("REQUEST PARAMETER $body");

        final result = await http.post(Uri.parse(BaseUrl.baseUrl + url),
            body: json.encode(body), headers: headers);
        print("resp${result.body}");
        response = returnResponse(result.statusCode, result.body);
        print(result.statusCode);
      }
    } on SocketException {
      Get.snackbar(
        snackPosition: SnackPosition.TOP,
        '',
        "Please Connect to internet Connection",
        colorText: Colors.white,
        backgroundColor: Colors.red,
      );
      throw FetchDataException('No Internet access');
    }
    return response;
  }

  returnResponse(int status, String result) {
    switch (status) {
      case 200:
        return jsonDecode(result);
      case 201:
        return jsonDecode(result);
      case 400:
        return jsonDecode(result);
      case 401:
        print('CODE==401');

        throw UnauthorisedException('Unauthorised user');
      case 404:
        throw ServerException('Server Error');
      case 500:
      default:
        throw FetchDataException('Internal Server Error');
    }
  }
}
