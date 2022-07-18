import 'package:cloyal_admin/Model/LoginModel.dart';
import 'package:cloyal_admin/Model/ProdukModel.dart';
import 'package:cloyal_admin/Model/TransaksiModel.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

class APIModel extends ChangeNotifier {
//View Model Login
  loginModel? loginmodel;
  Future<dynamic> login(String? email, String? password) async {
    final _dio = Dio();
    _dio.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));
    try {
      final response = await _dio.post(
        'http://ec2-54-160-45-255.compute-1.amazonaws.com:8080/v1/admin/login',
        data: {'email': email, 'password': password},
      );

      final login = loginModel.fromJson(response.data);

      loginmodel = login;
      // ignore: avoid_print
      print('data : $response.data');
      return response.data;
    } on DioError {
      return null;
    }
  }

  ProdukModel? produckmodel;
   Future<void> getProduckAllModel() async {
    var _dio = Dio();  
    _dio.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));

    final response = await _dio.get('http://ec2-54-160-45-255.compute-1.amazonaws.com:8080/v1/products');
      final product = ProdukModel.fromJson(response.data);
   produckmodel = product;
     print('data :${response.data}');
     notifyListeners();
  }
  get throwProduct{
    return produckmodel;
  }

  //view model Get All User
  TransaksiModel? transaksiModel;
   Future<void> getTransaksiModel() async {
    var _dio = Dio();  
    _dio.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));

    final response = await _dio.get('http://ec2-54-160-45-255.compute-1.amazonaws.com:8080/v1/transaction');
      final transaksi = TransaksiModel.fromJson(response.data);
   transaksiModel = transaksi;
     print('data :${response.data}');
     notifyListeners();
  }
  get throwTransaksi{
    return transaksiModel;
  }
}
