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
        prefixIcon: Icon(Icons.mail_outline),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Phone number or Email",
         hintStyle: TextStyle(
                      color: Colors.black, 
                      fontSize: 15 , 
                    fontWeight: FontWeight.w400),
        labelText: "Phone number or Email",
         labelStyle: TextStyle(
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
      },
      onSaved: (value){
        passwordController.text=value!;
      },
      decoration : InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        hintStyle: TextStyle(
                      color: Colors.black, 
                      fontSize: 15 , 
                      fontWeight: FontWeight.w400),
        labelText: "Password",
        labelStyle: TextStyle(
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
      color: Color.fromARGB(255, 158, 188, 250),
      child: MaterialButton(
        padding:EdgeInsets.fromLTRB(20, 15, 20, 15) ,
        minWidth: MediaQuery.of(context).size.width,
        onPressed: (){
          // signIn(usernameController.text, passwordController.text);
        },
        child: Text('Login', 
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold),),  
      ),
   );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(padding:EdgeInsets.only(top : 9.0)),
          CircleAvatar(
            backgroundImage: AssetImage('assets/logo/logo.jpg'),
            radius : 100.0,),
          Container(
            decoration: BoxDecoration(
                        color: Color.fromARGB(235, 166, 183, 205),
                        borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                    ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 8.0)),
                  Container(
                     padding: EdgeInsets.symmetric(vertical: 40.0 , horizontal:  30.0), 
                    child: Form(
                      key: _formkey,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Welcome ',
                                      style: TextStyle(
                                      color: Color.fromARGB(245, 27, 25, 21),
                                      fontWeight:  FontWeight.w800,
                                      fontSize: 70,
                                    ),),
                             Text('Login to continue',
                                    style: TextStyle(
                                    color: Color.fromARGB(245, 27, 25, 21),
                                    fontWeight:  FontWeight.w600,
                                    fontSize: 30,
                                  ),),
                               
                            SizedBox(height: 45,),
                            emailField,
                               SizedBox(height: 25,),
                            passwordField,
                               SizedBox(height: 35,),
                            loginButton,
                               SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:<Widget> [
                                Text("Belum Punya Akun? ",style: TextStyle(fontWeight: FontWeight.w400),),
                                GestureDetector(
                                  onTap: (){
                                  Navigator.of(context).push(
                                   PageRouteBuilder(
                                     pageBuilder: ((context, animation, secondaryAnimation){
                                       return RegistrationScreen();
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
                                  child: Text("Daftar", style: TextStyle(
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
