
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

    final response = await _dio.get('http://ec2-54-160-45-255.compute-1.amazonaws.com:8080/v1/products');
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
   Future<dynamic> login(String? email, String? password) async {
    final _dio = Dio();
      _dio.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));
        try {
          final response = await _dio.post(
            'http://ec2-54-160-45-255.compute-1.amazonaws.com:8080/v1/admin/login',
            data: {
              'email': email,
              'password': password
           },
          );

          final login = loginModel.fromJson(response.data);

          loginmodel = login;
            // ignore: avoid_print
            print('data : $loginmodel');
          return response.data;
        } on DioError {
          return null;
        }
      }
      
// view model SignUp
 signUpModel? signupmodel;
   Future<dynamic> SignUp(String? name, String? email, String? phoneNumber, String? password, String? dateOfBirth, int? point , String? accountNumber) async {
    final _dio = Dio();
      _dio.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));
        try {

          final response = await _dio.post(
            'http://ec2-54-160-45-255.compute-1.amazonaws.com:8080/v1/users',
            data: {
              'name': name,
              'email': email,
              'phone_number' : phoneNumber, 
              'password' : password, 
              'date_of_birth' : dateOfBirth, 
              'point' : point, 
              'account_number' : accountNumber,
           },
          );

          final daftar = signUpModel.fromJson(response.data);

          signupmodel = daftar;
            // ignore: avoid_print
            print('data : $signupmodel');
          return response.data;
        } on DioError catch (e){
          print(e.response);
          print(e.message);
          print('data : $dateOfBirth');
         
        }
      }
      
 
}