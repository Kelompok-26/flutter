class historyModel {
  String? message;
  List<Data>? data;

  historyModel({this.message, this.data});

  historyModel.fromJson(Map<String, dynamic> json) {
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
  User? user;
  String? number;
  Product? product;
  String? createdAt;

  Data({this.id, this.user, this.number, this.product, this.createdAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    number = json['number'];
    product =
        json['product'] != null ? new Product.fromJson(json['product']) : null;
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['number'] = this.number;
    if (this.product != null) {
      data['product'] = this.product!.toJson();
    }
    data['created_at'] = this.createdAt;
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? email;
  int? point;

  User({this.id, this.name, this.email, this.point});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    point = json['point'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['point'] = this.point;
    return data;
  }
}

class Product {
  int? id;
  String? typeProduct;
  String? providerName;
  String? productName;
  int? nominal;
  int? point;
  int? stock;

  Product(
      {this.id,
      this.typeProduct,
      this.providerName,
      this.productName,
      this.nominal,
      this.point,
      this.stock});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    typeProduct = json['type_product'];
    providerName = json['provider_name'];
    productName = json['product_name'];
    nominal = json['nominal'];
    point = json['point'];
    stock = json['stock'];
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
    return data;
  }
}
