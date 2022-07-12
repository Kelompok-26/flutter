// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portal_costumer/Model/Navbar_model.dart';
import 'package:portal_costumer/Screen/Detail_Screen.dart';
class TukarPointScreen extends StatefulWidget {
   const TukarPointScreen({ Key? key ,
  required this.image,
  }) : super(key: key);
  final String image;
  
  @override
  State<TukarPointScreen> createState() => _PointScreenState();
}

class _PointScreenState extends State<TukarPointScreen> {
  List<String> items = ['Provider','Indosat','Telkomsel','Axis','Tree(3)'];
  String ? selectedItem = 'Provider';
  @override
  Widget build(BuildContext context) {
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
        prefixIcon: const Icon(Icons.phone_android),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Phone number",
         hintStyle: const TextStyle(
                      color: Colors.black, 
                      fontSize: 15 , 
                    fontWeight: FontWeight.w400),
        labelText: "Phone number",
         labelStyle: const TextStyle(
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
          backgroundColor:Colors.white,
          title: const Text('Tukar Point',style: TextStyle(color:Colors.black),),
          centerTitle: true,
            leading: IconButton(
            icon: const Icon(Icons.arrow_back, 
             color: Colors.black,
          ),
          onPressed: (){
              // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>DetailScreen(image: widget.image,) ), (route) => false);
          },
        ),
        ),
     body: Column(
      children: [
        SizedBox(
          height: 200,
          width: 700,
          child: SvgPicture.asset(widget.image ,fit: BoxFit.cover,),
        ),
        Container(
          height: 7,
          color: Colors.grey[300],
        ),
        Expanded(child: 
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  const Text('Form Penukaran Point ke paket Data'),
                  const SizedBox(height: 20,),
                  const Text('Isi form berikut untuk melakukan penukaran point ke paket data yang kamu inginkan'),
                  const SizedBox(height: 30,),
                  PhoneNumberField,
                  const SizedBox(height: 20,),
                  SizedBox(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            width: 2, 
                            color : Colors.black))),
                            value :selectedItem,
                            items: items
                              .map((item) =>DropdownMenuItem<String>(
                              value :item,
                              child: Text(
                                item,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w800))) )
                                .toList(),
                       onChanged: (item) => setState(()=>selectedItem = item as String?),
                       ),
                  ),
                  const SizedBox(height: 100,),
                     Container(
                        height: 7,
                        color: Colors.grey[300],
                      ),
                  Material(
                       elevation: 5,
                       color: const Color.fromARGB(255, 144, 181, 255),
                       child: MaterialButton(
                      padding:const EdgeInsets.fromLTRB(20, 15, 20, 15) ,
                      onPressed: (){
                      showModalBottomSheet(context: context, builder: (BuildContext context){
                         return SizedBox(
                          height: double.infinity,
                          width: double.infinity,
                          child : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children : [
                              const Padding(padding: EdgeInsets.only(top: 10)),
                              SizedBox(
                                height: 200,
                                width : 200,
                                child: SvgPicture.asset('assets/logo/notifberhasil.svg' ,
                                fit :BoxFit.contain,)),
                               const Padding(padding: EdgeInsets.only(top: 10)),
                               const Text('Selamat !!!'),
                               const Text('Permintaan untuk Penukaran '),
                               const Text('Berhasil Dilakukan'),

                               const Padding(padding: EdgeInsets.only(top : 30)),
                               Material(
                                elevation: 5,
                                color: Colors.blue,
                                child: MaterialButton(
                                padding:const EdgeInsets.fromLTRB(20, 15, 20, 15) ,
                                onPressed: (){
                                 Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>itemNav() ), (route) => false);
              },
                               child: const Text('Tutup', 
                               textAlign: TextAlign.center,
                               style: TextStyle(
                               fontSize: 15,
                               color: Colors.white,
                               fontWeight: FontWeight.w800),),  
               ),
                )
                            ]
                          ),           
                         );
                      });
                       },
                       child: const Text('Submit', 
                      textAlign: TextAlign.center,
                      style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),),  
                  ),
               )
                ],
              ),
            )),
        
      ],
     ),
    );
  }
}