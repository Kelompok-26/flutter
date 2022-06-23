// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:portal_costumer/Model/Navbar_model.dart';
import 'package:portal_costumer/Model/listRekomPulsa_model.dart';
class listRekom extends StatefulWidget {
  const listRekom({ Key? key }) : super(key: key);

  @override
  State<listRekom> createState() => _listRekomState();
}
 
class _listRekomState extends State<listRekom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( 
          backgroundColor : Colors.white,
          title: const Text('Rekomendasi',style: TextStyle(color:Colors.black),),
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
           children :[
            const Padding(padding: const EdgeInsets.only(top : 10)),
             Card(
              elevation: 10,
               child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    height: 120,
                    width: 400,
                    color: Colors.blue,
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Point Anda Saat ini',
                      style: const TextStyle(
                        fontWeight: FontWeight.w200 , 
                        color: Colors.white , 
                        fontSize: 15),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text('300',
                      style: const TextStyle(
                        fontWeight: FontWeight.w800 , 
                        color: Colors.white , 
                        fontSize: 15),),
                        const SizedBox(width: 5,),
                      const Text('Point',
                      style: const TextStyle(
                        fontWeight: FontWeight.w800 , 
                        color: Colors.white , 
                        fontSize: 15),)

                  ],),
                  const SizedBox(height: 5,),
                  Center(
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width : 150,
                          color: Colors.grey,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.menu_book_outlined),
                              const SizedBox(width: 10,),
                              const Text('Riwayat Point')
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
               ),
              ),
             ),
           Container(
                  height: 7, 
                  color: Colors.grey[300],),
          const Padding(padding: EdgeInsets.only(top : 10)),
          const Text('Menampilkan Rekomendasi Paket Pulsa'), 
          const Padding(padding: const EdgeInsets.only(top : 10)),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                ListRekomPulsa(
                 img :'assets/logo/logo.jpg',
                 pulsa : 'Pulsa 20RB' , 
                 point : 12,
                 ),
                  const SizedBox(height: 20,),
                ListRekomPulsa(
                  img :'assets/logo/logo.jpg',
                  pulsa :'Pulsa 40RB' , 
                  point : 15,
                 ),
                  const SizedBox(height: 20,),
                 ListRekomPulsa(
                  img :'assets/logo/logo.jpg',
                  pulsa :'Pulsa 40RB' , 
                  point : 15,
                 ),
                  const SizedBox(height: 20,),
                 ListRekomPulsa(
                  img :'assets/logo/logo.jpg',
                  pulsa :'Pulsa 40RB' , 
                  point : 15,
                 ),
                  const SizedBox(height: 20,),
              ],
            ),
          )
        ]) 
          

    );
  }
}