// ignore_for_file: file_names, camel_case_types, unused_local_variable, non_constant_identifier_names, avoid_print
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:portal_costumer/Model/API/api_model.dart';
import 'package:portal_costumer/Model/Navbar_model.dart';
import 'package:portal_costumer/Screen/Registration_Screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
class loginScreen extends StatefulWidget {
  const loginScreen({ Key? key }) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
 APIModel? apimodel;
 final _formkey = GlobalKey<FormState>();
  final  phonenumberController = TextEditingController();
  final  passwordController = TextEditingController();

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
      onSaved: (value){
        phonenumberController.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration : InputDecoration(
        prefixIcon: const Icon(Icons.mail_outline),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        labelText:"Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      )
    );
   final PasswordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      validator: (value){
        RegExp regex = RegExp(r'^.{5,}$');
        if(value!.isEmpty){
          return ("Please Is Required for Loggin");
        }
        if(!regex.hasMatch(value)){
          return ("Password not Valid(Min. 5 Character)");
        }
        return null;
      },
      onSaved: (value){
        passwordController.text=value!;
      },
       textInputAction: TextInputAction.next,
      decoration : InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        labelText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      ),
    );
    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: const Color.fromARGB(255, 158, 188, 250),
      child: MaterialButton(
           child : const Text('Login',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15, 
              fontWeight: FontWeight.w800,
               color: Colors.white),),
        padding:const EdgeInsets.fromLTRB(20, 15, 20, 15) ,
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () async {
           if (_formkey.currentState!.validate()) {
          //show snackbar to indicate loading
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('Loging'),
            backgroundColor: Colors.green.shade300,
          ));
          //get response from ApiClient
          final res = await apimodel.login(   
            phonenumberController.text,
            passwordController.text,
          );
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          print(res);
          if(res == null){
              Fluttertoast.showToast(msg: 'Invalid Phonenumber / Password');
              return ; 
          }
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => itemNav(),), (route) => false);
        }
       }
       ),
   );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Padding(padding:EdgeInsets.only(top : 45.0)),
           SizedBox(
            height: 250, 
            width: 250,
          child:  SvgPicture.asset('assets/logo/cuate.svg', fit: BoxFit.cover,)
           ),
         const Padding(padding: EdgeInsets.only(top:  10.0)),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                          color: Color.fromARGB(235, 166, 183, 205),
                          borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                      ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 8.0)),
                    Container(
                       padding: const EdgeInsets.symmetric(vertical: 40.0 , horizontal:  30.0), 
                      child: Form(
                        key: _formkey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Welcome ',
                                      style: TextStyle(
                                      color: Color.fromARGB(245, 27, 25, 21),
                                      fontWeight:  FontWeight.w800,
                                      fontSize: 50,
                                    ),),
                             const Text('Login to continue',
                                    style: TextStyle(
                                    color: Color.fromARGB(245, 27, 25, 21),
                                    fontWeight:  FontWeight.w600,
                                    fontSize: 15,
                                  ),),
                               const SizedBox(height: 45,),
                            EmailField,
                               const SizedBox(height: 25,),
                            PasswordField,
                               const SizedBox(height: 35,),
                            loginButton,
                               const SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:<Widget> [
                                const Text("Belum Punya Akun? ",style: TextStyle(fontWeight: FontWeight.w400),),
                                GestureDetector(
                                  onTap: (){
                                  Navigator.of(context).push(
                                   PageRouteBuilder(
                                     pageBuilder: ((context, animation, secondaryAnimation){
                                       return const RegistrationScreen();
                                       }),
                                    transitionsBuilder: (context, animation, secondaryAnimation, child){
                                      final tween = Tween(begin: 0.0 , end: 1.0);
                                      return ScaleTransition(
                                        scale: animation.drive(tween),
                                        child: child
                                        ,);
                                    }
                                  ));
                                  },
                                  child: const Text("Daftar", style: TextStyle(
                                    color: Colors.black,
                                   fontWeight: FontWeight.w800,
                                    fontSize: 15,
                                  ),),
                                )
                              ],
                            )
                          ],
                        ) ),
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

