class ProdukModel {
  String? message;
  List<Data>? data;

  ProdukModel({this.message, this.data});

  ProdukModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? typeProduct;
  String? providerName;
  String? productName;
  int? nominal;
  int? point;
  int? stock;
  String? createdAt;

  Data(
      {this.id,
      this.typeProduct,
      this.providerName,
      this.productName,
      this.nominal,
      this.point,
      this.stock,
      this.createdAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    typeProduct = json['type_product'];
    providerName = json['provider_name'];
    productName = json['product_name'];
    nominal = json['nominal'];
    point = json['point'];
    stock = json['stock'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type_product'] = this.typeProduct;
    data['provider_name'] = this.providerName;
    data['product_name'] = this.productName;
    data['nominal'] = this.nominal;
    data['point'] = this.point;
    data['stock'] = this.stock;
    data['created_at'] = this.createdAt;
    return data;
  }
}
