import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:portal_costumer/Model/API/api_model.dart';
import 'package:portal_costumer/Screen/Login_Screen.dart';
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({ Key? key }) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
    APIModel? apimodel;
      
   final _formkey = GlobalKey<FormState>();
    final usernameController  = new TextEditingController();
     final phonenumberController  = new TextEditingController();
    final emailController  = new TextEditingController();
    final newPasswordController  = new TextEditingController();
    final confirmPasswordController = new TextEditingController();
    final pointControler  = new TextEditingController();
    final dateofBirdController = new TextEditingController();
    final accountNumberController = new TextEditingController();
  @override
  Widget build(BuildContext context) {  
      final EmailField = TextFormField(
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
        hintText: "Email",
        labelText:"Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      )
    );
    final usernameField = TextFormField(
      autofocus: false,
      controller: usernameController,
      keyboardType: TextInputType.text,
      validator: (value){
        if(value!.isEmpty){
          return ("Please Enter Your Username");
        }
        if(!RegExp("^(?=.{4,20})(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])").hasMatch(value)){
          return ("Please Enter Valid Username");
        }
        return null;
      },
      onSaved: (value){
        usernameController.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration : InputDecoration(
        prefixIcon: Icon(Icons.people),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Username",
        labelText:"Username",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      )
    );
     final BirthdayField = TextFormField(
      autofocus: false,
      controller: dateofBirdController,
      keyboardType: TextInputType.text,
      validator: (value){
        if(value!.isEmpty){
          return ("Please Enter Your Date Of Birday");
        }
        if(!RegExp("^(?=.{4,20})(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])").hasMatch(value)){
          return ("Please Enter Valid Date Of Birday");
        }
        return null;
      },
      onSaved: (value){
        dateofBirdController.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration : InputDecoration(
        prefixIcon: Icon(Icons.card_giftcard_outlined),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Tanggal Lahir",
        labelText:"Tanggal Lahir",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      )
    );
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
      onSaved: (value){
        accountNumberController.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration : InputDecoration(
        prefixIcon: Icon(Icons.account_balance_wallet_rounded),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "accountNumber",
        labelText:"accountNumber",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      )
    );
    final PhonenumberField = TextFormField(
      autofocus: false,
      controller: phonenumberController,
      keyboardType: TextInputType.phone,
      validator: (value){
        if(value!.isEmpty){
          return ("Please Enter Your Phone Number");
        }
        if(!RegExp("^(?:[+0]9)?[0-9]{10}").hasMatch(value)){
          return ("Please Enter Valid Phone Number");
        }
        return null;
      },
      onSaved: (value){
        phonenumberController.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration : InputDecoration(
        prefixIcon: Icon(Icons.phone),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Phone Number",
        labelText:"Phone Number",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      )
    );
     final PointField = TextFormField(
      autofocus: false,
      controller: pointControler,
      keyboardType: TextInputType.phone,
      // validator: (value){
      //   if(value!.isEmpty){
      //     return ("Please Enter Your Point");
      //   }
      //   if(!RegExp("^(?:[+0]9)?[0-9]{10}").hasMatch(value)){
      //     return ("Please Enter Valid Point");
      //   }
      //   return null;
      // },
      onSaved: (value){
        pointControler.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration : InputDecoration(
        prefixIcon: Icon(Icons.copyright_outlined),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Point",
        labelText:"Point",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      )
    );
      final newPasswordField = TextFormField(
      autofocus: false,
      controller: newPasswordController,
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
        newPasswordController.text=value!;
      },
       textInputAction: TextInputAction.next,
      decoration : InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        labelText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      ),
    );
      final ConfirmPasswordField = TextFormField(
      autofocus: false,
      controller: confirmPasswordController,
      obscureText: true,
      validator: (value){
        if(confirmPasswordController.text != newPasswordController.text){
            return "Password don't Match";
        };
        return null;
      },
      onSaved: (value){
        confirmPasswordController.text=value!;
      },
       textInputAction: TextInputAction.done,
      decoration : InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Confirm Password",
        labelText: "Confirm Password" ,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      ),
    );
     final SignUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Color.fromARGB(255, 158, 188, 250),
      child: MaterialButton(
        padding:EdgeInsets.fromLTRB(20, 15, 20, 15) ,
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () async {
      //     if(_formkey.currentState!.validate()){
      //      _formkey.currentState!.save();
      //      try {
      //       await Future.delayed(const Duration(seconds: 2))
      //       .then((value) async =>
      //        await apimodel?.signup(
      //         name : usernameController.text, 
      //         email : emailController.text,
      //         phoneNumber: phonenumberController.text,
      //         password: newPasswordController.text,
      //         point: int.parse(pointControler.text),
      //         dateofBirth: dateofBirdController.text,
      //         accountNumber: accountNumberController.text
      //         )).then((value) => {
      //          Fluttertoast.showToast(msg: "Login Success").then(
      //                     (value) => Navigator.of(context).pushReplacement(
      //                       MaterialPageRoute(
      //                         builder: (context) =>  loginScreen(),
      //                       ),
      //                     ),
      //                   ),
      //      });
      //     } catch(e){
      //       Fluttertoast.showToast(msg: e.toString());
      //     }
      },
        child: Text('SignUp', 
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
          fontWeight: FontWeight.w800),)
   ) );
  

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, 
          color: Color.fromARGB(255, 66, 179, 235),
          ),
          onPressed: (){
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>loginScreen() ), (route) => false);
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formkey,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     Container(
                        height: 250, 
                        width: 250,
                        child:  SvgPicture.asset('assets/logo/pendaftaran.svg', fit: BoxFit.cover,)
           ),
                      SizedBox(height: 45,),
                      Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Hi ',
                            style: TextStyle(
                                  color: Color.fromARGB(245, 27, 25, 21),
                                  fontWeight:  FontWeight.w800,
                                  fontSize: 60,
                                ),),
                          Text('Create a new account',
                            style: TextStyle(
                                color: Color.fromARGB(245, 27, 25, 21),
                                fontWeight:  FontWeight.w600,
                                fontSize: 20,
                              )),
                             SizedBox(height: 45,),
                          EmailField,
                             SizedBox(height: 20,),
                          usernameField,
                          SizedBox(height: 20,),
                          PhonenumberField,
                             SizedBox(height: 20,),
                          newPasswordField,
                             SizedBox(height: 20,),
                          ConfirmPasswordField,
                             SizedBox(height: 20,),
                          PointField,
                             SizedBox(height: 20,),
                          BirthdayField,
                             SizedBox(height: 20,),
                          AccountNumberField,
                            SizedBox(height: 20,),
                          SignUpButton,
                             SizedBox(height: 15,),
                        ],
                      ),
                    ],
                  ),
                ) ),
            ),
          ),

        ),
      ),
      
    );
  }

//  void signUp(String email, String password) async { 
//     if(_formkey.currentState!.validate()){
//         await _auth.createUserWithEmailAndPassword(email: email, password: password).then((value) => {
//           postDetailsToFirestore()
//         }).catchError((e){
//           Fluttertoast.showToast(msg: e!.message);
//         });
//     };
//   }
//   postDetailsToFirestore()async{
//       FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
//       User? user = _auth.currentUser;

//       userModel usermodel = userModel();

//       usermodel.email = user!.email;
//       usermodel.uid = user.uid;
//       usermodel.firstName = firstNameController.text;
//       usermodel.secondName = secondNameController.text;
  
//       await firebaseFirestore.collection("users").doc(user.uid).set(usermodel.toMap());

//       Fluttertoast.showToast(msg: "Account Created Successfully");
//       Navigator.pushAndRemoveUntil((context), MaterialPageRoute(builder: (context)=> loginScreen()), (route) => false);
//   }
}