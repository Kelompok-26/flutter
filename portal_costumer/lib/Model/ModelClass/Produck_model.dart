class ProductModel {
  double? code;
  String? status;
  List<Data>? data;

  ProductModel({this.code, this.status, this.data});

  ProductModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? productID;
  String? typeProduct;
  String? providerName;
  String? productName;
  int? nominal;
  int? stock;

  Data(
      {this.productID,
      this.typeProduct,
      this.providerName,
      this.productName,
      this.nominal,
      this.stock});

  Data.fromJson(Map<String, dynamic> json) {
    productID = json['productID'];
    typeProduct = json['TypeProduct'];
    providerName = json['ProviderName'];
    productName = json['ProductName'];
    nominal = json['Nominal'];
    stock = json['Stock'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productID'] = this.productID;
    data['TypeProduct'] = this.typeProduct;
    data['ProviderName'] = this.providerName;
    data['ProductName'] = this.productName;
    data['Nominal'] = this.nominal;
    data['Stock'] = this.stock;
    return data;
  }
}
