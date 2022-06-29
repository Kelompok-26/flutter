 class ProduckAllModel {
  int? productID;
  String? typeProduct;
  String? providerName;
  String? productName;
  int? nominal;
  int? stock;

  ProduckAllModel(
      {
      this.productID,
     required this.typeProduct,
     required this.providerName,
     required this.productName,
     required this.nominal,
      this.stock});

  ProduckAllModel.fromJson(Map<String, dynamic> json) {
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