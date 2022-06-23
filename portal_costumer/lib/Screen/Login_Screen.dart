// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:portal_costumer/Screen/Registration_Screen.dart';
class loginScreen extends StatefulWidget {
  const loginScreen({ Key? key }) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {

  @override
  Widget build(BuildContext context) {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

   final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value){
        if(value!.isEmpty){
          return ("Please Enter Your Email");
        }
        if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
          return ("Please Enter Valid Email");
        }
        return null;
      },
      onSaved: (value){
        emailController.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration : InputDecoration(
        prefixIcon: const Icon(Icons.mail_outline),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Phone number or Email",
         hintStyle: const TextStyle(
                      color: Colors.black, 
                      fontSize: 15 , 
                    fontWeight: FontWeight.w400),
        labelText: "Phone number or Email",
         labelStyle: const TextStyle(
                      color: Colors.black, 
                      fontSize: 15 , 
                    fontWeight: FontWeight.w400),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      )
    );

    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      validator: (value){
        RegExp regex = new RegExp(r'^.{5,}$');
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
      decoration : InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        hintStyle: const TextStyle(
                      color: Colors.black, 
                      fontSize: 15 , 
                      fontWeight: FontWeight.w400),
        labelText: "Password",
        labelStyle: const TextStyle(
                      color: Colors.black, 
                      fontSize: 15 , 
                    fontWeight: FontWeight.w400),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      ),
      textInputAction: TextInputAction.done,
     );
  
    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: const Color.fromARGB(255, 158, 188, 250),
      child: MaterialButton(
        padding:const EdgeInsets.fromLTRB(20, 15, 20, 15) ,
        minWidth: MediaQuery.of(context).size.width,
        onPressed: (){
          // signIn(usernameController.text, passwordController.text);
        },
        child: const Text('Login', 
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold),),  
      ),
   );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Padding(padding:const EdgeInsets.only(top : 9.0)),
          const CircleAvatar(
            backgroundImage: AssetImage('assets/logo/logo.jpg'),
            radius : 100.0,),
          Container(
            decoration: const BoxDecoration(
                        color: Color.fromARGB(235, 166, 183, 205),
                        borderRadius: BorderRadius.vertical(top: const Radius.circular(30.0)),
                    ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(padding: const EdgeInsets.only(top: 8.0)),
                  Container(
                     padding: const EdgeInsets.symmetric(vertical: 40.0 , horizontal:  30.0), 
                    child: Form(
                      key: _formkey,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text('Welcome ',
                                      style: const TextStyle(
                                      color: Color.fromARGB(245, 27, 25, 21),
                                      fontWeight:  FontWeight.w800,
                                      fontSize: 70,
                                    ),),
                             const Text('Login to continue',
                                    style: const TextStyle(
                                    color: Color.fromARGB(245, 27, 25, 21),
                                    fontWeight:  FontWeight.w600,
                                    fontSize: 30,
                                  ),),
                               
                            const SizedBox(height: 45,),
                            emailField,
                               const SizedBox(height: 25,),
                            passwordField,
                               const SizedBox(height: 35,),
                            loginButton,
                               const SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:<Widget> [
                                const Text("Belum Punya Akun? ",style: const TextStyle(fontWeight: FontWeight.w400),),
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
                        ),
                      ) ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      
    );
  }
}

// void signIn(String email, String password)async{
//     if(_formkey.currentState!.validate()){
//       await _auth.signInWithEmailAndPassword(email: email, password: password)
//       .then((uid) => {
//         Fluttertoast.showToast(msg: "Loggin Successful"),
//         Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> HomeScreen())),
//       }).catchError((e){
//         Fluttertoast.showToast(msg: e!.message);
//       });
//     }
//   }
