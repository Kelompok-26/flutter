import 'package:flutter/material.dart';
import 'package:portal_costumer/Screen/Detail_Screen.dart';
class TukarPointScreen extends StatefulWidget {
  const TukarPointScreen({ Key? key }) : super(key: key);

  @override
  State<TukarPointScreen> createState() => _PointScreenState();
}

class _PointScreenState extends State<TukarPointScreen> {
  List<String> items = ['Provider','Indosat','Telkomsel','Axis','Tree(3)'];
  String ? selectedItem = 'Provider';
  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    final TextEditingController nohpController  = TextEditingController();
    final PhoneNumberField = TextFormField(
      autofocus: false,
      controller: nohpController,
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
        nohpController.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration : InputDecoration(
        prefixIcon: Icon(Icons.phone_android),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Phone number",
         hintStyle: TextStyle(
                      color: Colors.black, 
                      fontSize: 15 , 
                    fontWeight: FontWeight.w400),
        labelText: "Phone numberl",
         labelStyle: TextStyle(
                      color: Colors.black, 
                      fontSize: 15 , 
                    fontWeight: FontWeight.w400),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      )
    );
    return Scaffold(
        appBar: AppBar( 
          backgroundColor:Colors.transparent,
          title: Text('Tukar Point',style: TextStyle(color:Colors.black),),
          centerTitle: true,
            leading: IconButton(
            icon: Icon(Icons.arrow_back, 
             color: Colors.black,
          ),
          onPressed: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>DetailScreen() ), (route) => false);
          },
        ),
        ),
     body: Column(
      children: [
        Container(
          height: 200,
          width: 700,
          child: Image.asset('assets/logo/logo.jpg', fit: BoxFit.cover,),
        ),
        Container(
          height: 7,
          color: Colors.grey[300],
        ),
        Expanded(child: 
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Text('Form Penukaran Point ke paket Data'),
                    SizedBox(height: 20,),
                    Text('Isi form berikut untuk melakukan penukaran point ke paket data yang kamu inginkan'),
                    SizedBox(height: 30,),
                    PhoneNumberField,
                    SizedBox(height: 20,),
                    SizedBox(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              width: 2, 
                              color : Colors.black))),
                              value :selectedItem,
                              items: items
                                .map((item) =>DropdownMenuItem<String>(
                                value :item,
                                child: Text(
                                  item,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800))) )
                                  .toList(),
                         onChanged: (item) => setState(()=>selectedItem = item as String?),
                         ),
                    ),
                    SizedBox(height: 100,),
                       Container(
                          height: 7,
                          color: Colors.grey[300],
                        ),
                    Material(
                         elevation: 5,
                         color: Color.fromARGB(255, 158, 188, 250),
                         child: MaterialButton(
                        padding:EdgeInsets.fromLTRB(20, 15, 20, 15) ,
                        onPressed: (){
                 // signIn(usernameController.text, passwordController.text);
                         },
                         child: Text('Submit', 
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),),  
                    ),
                 )
                  ],
                ),
              ),
            )),
        
      ],
     ),
    );
  }
}