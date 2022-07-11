// ignore_for_file: file_names, camel_case_types, prefer_collection_literals

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
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Name'] = name;
    data['Email'] = email;
    data['PhoneNumber'] = phoneNumber;
    data['Password'] = password;
    data['Point'] = point;
    data['DateofBirth'] = dateofBirth;
    data['AccountNumber'] = accountNumber;
    return data;
  }
}