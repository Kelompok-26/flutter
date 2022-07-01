import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:portal_costumer/Model/ModelClass/Produck_model.dart';
  class  APIModel extends ChangeNotifier{
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
}