// ignore_for_file: file_names, prefer_void_to_null, unnecessary_question_mark

class ProductModel {
  String? message;
  List<Data>? data;

  ProductModel({this.message, this.data});

  ProductModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
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
  Null? deletedAt;

  Data(
      {this.id,
      this.typeProduct,
      this.providerName,
      this.productName,
      this.nominal,
      this.point,
      this.stock,
      this.createdAt,
      this.deletedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    typeProduct = json['type_product'];
    providerName = json['provider_name'];
    productName = json['product_name'];
    nominal = json['nominal'];
    point = json['point'];
    stock = json['stock'];
    createdAt = json['created_at'];
    deletedAt = json['DeletedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['type_product'] = typeProduct;
    data['provider_name'] = providerName;
    data['product_name'] = productName;
    data['nominal'] = nominal;
    data['point'] = point;
    data['stock'] = stock;
    data['created_at'] = createdAt;
    data['DeletedAt'] = deletedAt;
    return data;
  }
}
