import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:portal_costumer/Model/ModelClass/Produck_model.dart';
  class  APIModel extends ChangeNotifier{
   List<ProduckAllModel> produckallmodel = [];

  get typeProduct => null;
   Future getProduckAllModel() async {
    List<ProduckAllModel> newproduckallmodel = [];
    final response = await Dio().get('https://app.swaggerhub.com/apis/Dzaakk/C-loyal/1.0.0#/Product%20API/get_products');
    (response.data as Map<String, dynamic>).forEach((key, value) {
      newproduckallmodel.add(
        ProduckAllModel(
          typeProduct: value['typeProduct'],
          providerName: value ['providerName'],
          productName: value['productName'],
          nominal: value ['nominal'],
          ));
    });
     print(produckallmodel);
     produckallmodel = newproduckallmodel;
     notifyListeners();
  }
   List<ProduckAllModel> get throwProduct{
      return produckallmodel;
    }
}