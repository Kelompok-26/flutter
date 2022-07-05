class loginModel { 
  String? phonenumber;
  String? password;

  loginModel({this.phonenumber, this.password});

  loginModel.fromJson(Map<String, dynamic> json) :
    phonenumber = json['phonenumber'],
    password = json['password'];
  

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['phonenumber'] = this.phonenumber;
    data['password'] = this.password;
    return data;
  }
}