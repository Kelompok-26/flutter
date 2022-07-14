class userAccount {
  String? message;
  usermodel? data;

  userAccount({this.message, this.data});

  userAccount.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? new usermodel.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class usermodel {
  int? id;
  String? name;
  String? email;
  String? phoneNumber;
  String? password;
  String? dateOfBirth;
  String? gender;
  int? point;
  String? accountNumber;

  usermodel(
      {this.id,
      this.name,
      this.email,
      this.phoneNumber,
      this.password,
      this.dateOfBirth,
      this.gender,
      this.point,
      this.accountNumber});

  usermodel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    password = json['password'];
    dateOfBirth = json['date_of_birth'];
    gender = json['gender'];
    point = json['point'];
    accountNumber = json['account_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone_number'] = this.phoneNumber;
    data['password'] = this.password;
    data['date_of_birth'] = this.dateOfBirth;
    data['gender'] = this.gender;
    data['point'] = this.point;
    data['account_number'] = this.accountNumber;
    return data;
  }
}
