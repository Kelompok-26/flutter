import 'package:flutter/material.dart';
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({ Key? key }) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
   final _formkey = GlobalKey<FormState>();
    final firstNameController  = new TextEditingController();
    final secondNameController  = new TextEditingController();
    final newUsernameController  = new TextEditingController();
    final newPasswordController  = new TextEditingController();
    final confirmPasswordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {  
      final newUsernameField = TextFormField(
      autofocus: false,
      controller: newUsernameController,
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
        newUsernameController.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration : InputDecoration(
        prefixIcon: Icon(Icons.mail_outline),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Phone Number or Email",
        labelText:"Phone Number or Email",
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
        onPressed: (){
          // signUp(newUsernameController.text, newPasswordController.text);
        },
        child: Text('SignUp', 
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold),),
      ),
   );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, 
          color: Color.fromARGB(255, 66, 179, 235),
          ),
          onPressed: (){
            Navigator.of(context).pop();
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
                     SizedBox(
                          child:CircleAvatar(
                                 backgroundImage: AssetImage('assets/logo/logo.jpg'),
                                   radius : 100.0,),),
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
                          newUsernameField,
                             SizedBox(height: 20,),
                          newPasswordField,
                             SizedBox(height: 20,),
                          ConfirmPasswordField,
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