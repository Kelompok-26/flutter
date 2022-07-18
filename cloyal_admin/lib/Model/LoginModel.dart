class loginModel {
  String? user;
  int? userId;
  String? message;

  loginModel({this.user, this.userId, this.message});

  loginModel.fromJson(Map<String, dynamic> json) {
    user = json['User'];
    userId = json['User Id'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['User'] = this.user;
    data['User Id'] = this.userId;
    data['message'] = this.message;
    return data;
  }
}