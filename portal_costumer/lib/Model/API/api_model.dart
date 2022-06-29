import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:portal_costumer/Model/ModelClass/Produck_model.dart';
  class  APIModel extends ChangeNotifier{
   List<ProduckAllModel> produckallmodel = [];

   Future<void> getProduckAllModel() async {
    List<ProduckAllModel> newproduckallmodel = [];
    final response = await Dio().get('https://virtserver.swaggerhub.com/Dzaakk/C-loyal/1.0.0/products');
       final produckallmodel = (
        response.data['data'] as List).map((e) => ProduckAllModel(
        typeProduct: e['TypeProduct'],
        providerName: e['ProviderName'],
        productName: e['ProductName'],
        nominal: e['Nominal'],
        )).toList();
     print(produckallmodel);
     notifyListeners();
  }
   List<ProduckAllModel> get throwProduct{
      return produckallmodel;
    }
}