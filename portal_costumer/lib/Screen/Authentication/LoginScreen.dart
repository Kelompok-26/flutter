// ignore_for_file: file_names, camel_case_types, unused_local_variable, non_constant_identifier_names, avoid_print
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:portal_costumer/Model/API/api_model.dart';
import 'package:portal_costumer/Model/ModelClass/editProfile_view_model.dart';
import 'package:portal_costumer/Model/Widget/Navbar_model.dart';
import 'package:portal_costumer/Screen/Authentication/RegistrationScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  APIModel? apimodel;
  bool _showPassword = true;
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
    final EmailField = TextFormField(
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
        filled: true,
        fillColor: Colors.grey[300],
        prefixIcon: const Icon(Icons.mail_outline),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        labelText: "Email",
        labelStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
    final PasswordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: _showPassword,
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
          filled: true,
          fillColor: Colors.grey[300],
          suffixIcon: IconButton(
            icon: _showPassword
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility),
            onPressed: () {
              _showPassword = !_showPassword;
              setState(() {});
            },
          ),
          prefixIcon: const Icon(Icons.vpn_key),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          labelText: "Password",
          labelStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          )),
    );
    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Color.fromARGB(255, 237, 146, 136),
      child: MaterialButton(
          child: const Text(
            'Masuk',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w800, color: Colors.white),
          ),
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () async {
            if (_formkey.currentState!.validate()) {
              //show snackbar to indicate loading
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: const Text('Login'),
                backgroundColor: Colors.green.shade300,
              ));
              //get response from ApiClient
              final res = await apimodel.login(
                phonenumberController.text,
                passwordController.text,
              );

              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              print(res);
              if (res == null) {
                Fluttertoast.showToast(msg: 'Invalid Email / Password');
                return;
              }
              // var sp = await SharedPreferences.getInstance();
              // sp.setString('token', apimodel.loginmodel!.user.toString());
              await apimodel.getProduckAllModel();
              Provider.of<editProfile>(context, listen: false)
                  .setTokenandID(res['User Id'], res['User']);
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => itemNav(),
                  ),
                  (route) => false);
            }
          }),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 45.0)),
          SizedBox(
              height: 200,
              width: 200,
              child: SvgPicture.asset(
                'assets/logo/cuate.svg',
                fit: BoxFit.cover,
              )),
          const Padding(padding: EdgeInsets.only(top: 15.0)),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(235, 25, 63, 111),
                borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 8.0)),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 40.0, horizontal: 30.0),
                      child: Form(
                          key: _formkey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Selamat datang di C-Loyal \nSilahkan masuk ke akun anda ',
                                style: TextStyle(
                                  color: Color.fromARGB(245, 255, 255, 255),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(
                                height: 45,
                              ),
                              EmailField,
                              const SizedBox(
                                height: 25,
                              ),
                              PasswordField,
                              const SizedBox(
                                height: 35,
                              ),
                              loginButton,
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const Text(
                                    "Belum Memiliki Akun? ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(pageBuilder:
                                              ((context, animation,
                                                  secondaryAnimation) {
                                        return const RegistrationScreen();
                                      }), transitionsBuilder: (context,
                                              animation,
                                              secondaryAnimation,
                                              child) {
                                        final tween =
                                            Tween(begin: 0.0, end: 1.0);
                                        return ScaleTransition(
                                          scale: animation.drive(tween),
                                          child: child,
                                        );
                                      }));
                                    },
                                    child: const Text(
                                      "Daftar Sekarang!",
                                      style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 15,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
