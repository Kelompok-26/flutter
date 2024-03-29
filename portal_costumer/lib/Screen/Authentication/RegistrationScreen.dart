// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:portal_costumer/Model/API/api_model.dart';
import 'package:portal_costumer/Screen/Authentication/LoginScreen.dart';

import 'package:provider/provider.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  APIModel? apimodel;
  bool _showPassword = true;

  final _formkey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final phonenumberController = TextEditingController();
  final emailController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final pointControler = TextEditingController();
  final dateofBirdController = TextEditingController();
  final accountNumberController = TextEditingController();
  final GenderController = TextEditingController();
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
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please Enter Your Email");
        }
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ("Please Enter Valid Email");
        }
        return null;
      },
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[300],
        prefixIcon: const Icon(
          Icons.mail_outline,
          // color: Colors.orange,gfh
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        labelText: "Email",
        labelStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orange, width: 3.5),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
    final usernameField = TextFormField(
        autofocus: false,
        controller: usernameController,
        keyboardType: TextInputType.text,
        validator: (value) {
          if (value!.isEmpty) {
            return ("Please Enter Your Username");
          }
          if (!RegExp(
            "^(?=.{4,20})(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])",
          ).hasMatch(value)) {
            return ("Please Enter Valid Username");
          }
          return null;
        },
        onSaved: (value) {
          usernameController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[300],
            prefixIcon: const Icon(
              Icons.people,
            ),
            contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            hintText: "Username",
            labelText: "Username",
            labelStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),),);
    final BirthdayField = TextFormField(
        autofocus: false,
        controller: dateofBirdController,
        keyboardType: TextInputType.text,
        // validator: (value){
        //   if(value!.isEmpty){
        //     return ("Please Enter Your Date Of Birday");
        //   }
        //   if(!RegExp("^(?=.{4,20})(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])").hasMatch(value)){
        //     return ("Please Enter Valid Date Of Birday");
        //   }
        //   return null;
        // },
        onSaved: (value) {
          dateofBirdController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[300],
            prefixIcon: const Icon(
              Icons.card_giftcard_outlined,
            ),
            contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            hintText: "yyyy-mm-dd",
            labelText: "Tanggal Lahir",
            labelStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            )));
    final GenderField = TextFormField(
        autofocus: false,
        controller: GenderController,
        keyboardType: TextInputType.text,
        validator: (value) {
          if (value!.isEmpty) {
            return ("Please Enter Your Gender");
          }
          if (!RegExp(
            "^(?=.{4,8})(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])",
          ).hasMatch(value)) {
            return ("Please Enter Valid Gender");
          }
          return null;
        },
        onSaved: (value) {
          usernameController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[300],
            prefixIcon: const Icon(
              Icons.male,
            ),
            contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            hintText: "Male/Female",
            labelText: "Gender",
            labelStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),),);
    final AccountNumberField = TextFormField(
        autofocus: false,
        controller: accountNumberController,
        keyboardType: TextInputType.phone,
        // validator: (value){
        //   if(value!.isEmpty){
        //     return ("Please Enter Your accountNumber");
        //   }
        //   if(!RegExp("^(?:[+0]9)?[0-9]{10}").hasMatch(value)){
        //     return ("Please Enter Valid accountNumber");
        //   }
        //   return null;
        // },
        onSaved: (value) {
          accountNumberController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[300],
            prefixIcon: const Icon(
              Icons.account_balance_wallet_rounded,
            ),
            contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            hintText: "accountNumber",
            labelText: "accountNumber",
            labelStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),),);
    final PhonenumberField = TextFormField(
        autofocus: false,
        controller: phonenumberController,
        keyboardType: TextInputType.phone,
        validator: (value) {
          if (value!.isEmpty) {
            return ("Please Enter Your Phone Number");
          }
          if (!RegExp(
            "^(?:[+0]9)?[0-9]{10}",
          ).hasMatch(value)) {
            return ("Please Enter Valid Phone Number");
          }
          return null;
        },
        onSaved: (value) {
          phonenumberController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[300],
            prefixIcon: const Icon(
              Icons.phone,
            ),
            contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            hintText: "Phone Number",
            labelText: "Phone Number",
            labelStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),),);
    final newPasswordField = TextFormField(
      autofocus: false,
      controller: newPasswordController,
      obscureText: _showPassword,
      validator: (value) {
        RegExp regex = RegExp(r'^.{10,}$');
        if (value!.isEmpty) {
          return ("Please Is Required for Loggin");
        }
        if (!regex.hasMatch(value)) {
          return ("Password not Valid(Min. 10 Character)");
        }
        return null;
      },
      onSaved: (value) {
        newPasswordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[300],
          suffixIcon: IconButton(
            icon: _showPassword
                ? Icon(Icons.visibility_off)
                : Icon(
                    Icons.visibility,
                  ),
            onPressed: () {
              _showPassword = !_showPassword;
              setState(
                () {},
              );
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
    final ConfirmPasswordField = TextFormField(
      autofocus: false,
      controller: confirmPasswordController,
      obscureText: _showPassword,
      validator: (value) {
        if (confirmPasswordController.text != newPasswordController.text) {
          return "Password don't Match";
        }
        return null;
      },
      onSaved: (value) {
        confirmPasswordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[300],
          suffixIcon: IconButton(
            icon: _showPassword
                ? Icon(Icons.visibility_off)
                : Icon(
                    Icons.visibility,
                  ),
            onPressed: () {
              _showPassword = !_showPassword;
              setState(() {});
            },
          ),
          prefixIcon: const Icon(
            Icons.vpn_key,
          ),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Confirm Password",
          labelText: "Confirm Password",
          labelStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          )),
    );
    final SignUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(5),
      color: Color(0xFFEE6F57),
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () async {
          if (_formkey.currentState!.validate()) {
            //show snackbar to indicate loading
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: const Text('Signup'),
              backgroundColor: Colors.green.shade300,
            ));
            //get response from ApiClient
            final res = await apimodel.SignUp(
              usernameController.text,
              emailController.text,
              phonenumberController.text,
              newPasswordController.text,
              dateofBirdController.text,
              GenderController.text,
              accountNumberController.text,
            );
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            print(res);
            if (res == null) {
              Fluttertoast.showToast(
                msg: 'Invalid Email / Date of birth',
              );
              return;
            }
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
                (route) => false);
          }
        },
        child: const Text(
          'Daftar',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF145374),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 66, 179, 235),
          ),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
                (route) => false);
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Color(0xFF145374),
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'Selamat datang di C-Loyal! \nDaftarkan diri anda sekarang ',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        EmailField,
                        const SizedBox(
                          height: 20,
                        ),
                        usernameField,
                        const SizedBox(
                          height: 20,
                        ),
                        PhonenumberField,
                        const SizedBox(
                          height: 20,
                        ),
                        newPasswordField,
                        const SizedBox(
                          height: 20,
                        ),
                        ConfirmPasswordField,
                        const SizedBox(
                          height: 20,
                        ),
                        BirthdayField,
                        const SizedBox(
                          height: 20,
                        ),
                        GenderField,
                        const SizedBox(
                          height: 20,
                        ),
                        AccountNumberField,
                        const SizedBox(
                          height: 20,
                        ),
                        SignUpButton,
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              "Sudah Memiliki Akun sebelumnya? ",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  PageRouteBuilder(
                                    pageBuilder: ((context, animation,
                                        secondaryAnimation) {
                                      return const LoginScreen();
                                    }),
                                    transitionsBuilder: (context, animation,
                                        secondaryAnimation, child) {
                                      final tween = Tween(begin: 0.0, end: 1.0);
                                      return ScaleTransition(
                                        scale: animation.drive(tween),
                                        child: child,
                                      );
                                    },
                                  ),
                                );
                              },
                              child: const Text(
                                "Masuk",
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
