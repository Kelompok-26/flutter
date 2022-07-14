// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portal_costumer/Model/Navbar_model.dart';
class TukarPointScreen extends StatefulWidget {
   const TukarPointScreen({ Key? key ,
  required this.image,
  required this.providerName,
  }) : super(key: key);
  final String image;
  final String providerName;
  
  @override
  State<TukarPointScreen> createState() => _PointScreenState();
}

class _PointScreenState extends State<TukarPointScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController nohpController  = TextEditingController();
    final PhoneNumberField = TextFormField(
      autofocus: false,
      controller: nohpController,
      keyboardType: TextInputType.phone,
      validator: (value){
        if(value!.isEmpty){
          return ("Please Enter Your PhoneNumber / Nomor Rekening");
        }
      },
      onSaved: (value){
        nohpController.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration : InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Phone number/ Nomor Rekening",
         hintStyle: const TextStyle(
                      color: Colors.black, 
                      fontSize: 15 , 
                    fontWeight: FontWeight.w400),
        labelText: "Phone number/ Nomor Rekening",
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
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>itemNav() ), (route) => false);
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
                    child: Text(widget.providerName,style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800, 
                    ),)
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