class signUpModel {
  String? name;
  String? email;
  String? phoneNumber;
  String? password;
  int? point;
  String? dateofBirth;
  String? accountNumber;

  signUpModel(
      {this.name,
      this.email,
      this.phoneNumber,
      this.password,
      this.point,
      this.dateofBirth,
      this.accountNumber});

  signUpModel.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    email = json['Email'];
    phoneNumber = json['PhoneNumber'];
    password = json['Password'];
    point = json['Point'];
    dateofBirth = json['DateofBirth'];
    accountNumber = json['AccountNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    data['Email'] = this.email;
    data['PhoneNumber'] = this.phoneNumber;
    data['Password'] = this.password;
    data['Point'] = this.point;
    data['DateofBirth'] = this.dateofBirth;
    data['AccountNumber'] = this.accountNumber;
    return data;
  }
}