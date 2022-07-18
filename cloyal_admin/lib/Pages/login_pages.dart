// ignore_for_file: prefer_const_constructors

import 'package:cloyal_admin/Model/ApiModel/ApiModel.dart';
import 'package:cloyal_admin/Screen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class LoginPages extends StatefulWidget {
  static const String id = 'LoginPages';

  const LoginPages({Key? key}) : super(key: key);

  @override
  _LoginPagesState createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  APIModel? apimodel;
  final _formkey = GlobalKey<FormState>();
  final phonenumberController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    APIModel apimodel = Provider.of<APIModel>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final apimodel = Provider.of<APIModel>(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.orange.shade900,
          Colors.orange.shade500,
          Colors.orange.shade400,
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            // #login, #welcome
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Welcome Admin!",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 3, 53, 94),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60)),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        // #email, #password
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(171, 171, 171, .7),
                                  blurRadius: 20,
                                  offset: Offset(0, 10)),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey.shade200),
                                  ),
                                ),
                                child: TextFormField(
                                  autofocus: false,
                                  controller: phonenumberController,
                                  keyboardType: TextInputType.emailAddress,
                                  // validator: (value){
                                  //   if(value!.isEmpty){
                                  //     return ("Please Enter Your Email");
                                  //   }
                                  //   if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                                  //     return ("Please Enter Valid Email");
                                  //   }
                                  //   return null;
                                  // },
                                  onSaved: (value) {
                                    phonenumberController.text = value!;
                                  },
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    prefixIcon: const Icon(Icons.mail_outline),
                                    contentPadding: const EdgeInsets.fromLTRB(
                                        20, 15, 20, 15),
                                    hintText: "Email",
                                    labelText: "Email",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey.shade200)),
                                ),
                                child: TextFormField(
                                  autofocus: false,
                                  controller: passwordController,
                                  obscureText: true,
                                  validator: (value) {
                                    RegExp regex = RegExp(r'^.{5,}$');
                                    if (value!.isEmpty) {
                                      return ("Please Is Required for Loggin");
                                    }
                                    if (!regex.hasMatch(value)) {
                                      return ("Password not Valid(Min. 5 Character)");
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    passwordController.text = value!;
                                  },
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                      prefixIcon: const Icon(Icons.vpn_key),
                                      contentPadding: const EdgeInsets.fromLTRB(
                                          20, 15, 20, 15),
                                      hintText: "Password",
                                      labelText: "Password",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 40),
                        // #login
                        Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(255, 158, 188, 250),
                          child: MaterialButton(
                              child: const Text(
                                'Login',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white),
                              ),
                              padding:
                                  const EdgeInsets.fromLTRB(20, 15, 20, 15),
                              minWidth: MediaQuery.of(context).size.width,
                              onPressed: () async {
                                  {
                                  //show snackbar to indicate loading
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: const Text('Loging'),
                                    backgroundColor: Colors.green.shade300,
                                  ));
                                  //get response from ApiClient
                                  final res = await apimodel.login(
                                    phonenumberController.text,
                                    passwordController.text,
                                  );
                                  ScaffoldMessenger.of(context)
                                      .hideCurrentSnackBar();
                                  print(res);
                                  if (res == null) {
                                    Fluttertoast.showToast(
                                        msg: 'Invalid Phonenumber / Password');
                                    return;
                                  }
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HomeScreen(),
                                      ),
                                      (route) => false);
                                }
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
