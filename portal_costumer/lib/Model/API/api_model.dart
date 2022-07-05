import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:portal_costumer/Model/ModelClass/Login_model.dart';
import 'package:portal_costumer/Model/ModelClass/Produck_model.dart';
import 'package:portal_costumer/Model/ModelClass/SignUp_model.dart';
  class  APIModel extends ChangeNotifier{
   //view Model Product
   ProductModel? produckmodel;
   Future<void> getProduckAllModel() async {
    var _dio = Dio();  
    // _dio.interceptors
    //     .add(LogInterceptor(responseBody: true, requestBody: true));

    final response = await _dio.get('https://virtserver.swaggerhub.com/Dzaakk/C-loyal/1.0.0/products');
      final product = ProductModel.fromJson(response.data);
   produckmodel = product;
    //  print('data : $produckmodel');
     notifyListeners();
  }
  get throwProduct{
    return produckmodel;
  }


  //View Model Login
   loginModel? loginmodel;
   Future<dynamic> login(String? phonenumber, String? password) async {
    final _dio = Dio();
        try {
          final response = await _dio.post(
            'https://virtserver.swaggerhub.com/Dzaakk/C-loyal/1.0.0/login',
            data: {
              'phonenumber': phonenumber,
              'password': password
            },
          );
          final login = loginModel.fromJson(response.data);

          loginmodel = login;
          return response.data['token'];
        } on DioError catch (e) {
          print('Te bisa');
          return null;
        }
      }
      
// view model SignUp

 
}