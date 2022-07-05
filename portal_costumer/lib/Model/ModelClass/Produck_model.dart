class ProductModel {
  int? id;
  String? typeProduct;
  String? providerName;   
  String? productName;
  int? nominal;
  int? point;
  int? stock;

  ProductModel(
      {this.id,
      this.typeProduct,
      this.providerName,
      this.productName,
      this.nominal,
      this.point,
      this.stock});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    typeProduct = json['TypeProduct'];
    providerName = json['ProviderName'];
    productName = json['ProductName'];
    nominal = json['Nominal'];
    point = json['Point'];
    stock = json['Stock'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['TypeProduct'] = this.typeProduct;
    data['ProviderName'] = this.providerName;
    data['ProductName'] = this.productName;
    data['Nominal'] = this.nominal;
    data['Point'] = this.point;
    data['Stock'] = this.stock;
    return data;
  }
}