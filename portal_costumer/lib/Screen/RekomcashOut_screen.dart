// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:portal_costumer/Model/Navbar_model.dart';
import 'package:portal_costumer/Model/RekomCashout_model.dart';

class ListRekomCashout extends StatefulWidget {
  const ListRekomCashout({ Key? key }) : super(key: key);

  @override
  State<ListRekomCashout> createState() => _ListRekomCashoutState();
}

class _ListRekomCashoutState extends State<ListRekomCashout> {
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
            const Padding(padding: EdgeInsets.only(top : 10)),
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
                      style: TextStyle(
                        fontWeight: FontWeight.w200 , 
                        color: Colors.white , 
                        fontSize: 15),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text('300',
                      style: TextStyle(
                        fontWeight: FontWeight.w800 , 
                        color: Colors.white , 
                        fontSize: 15),),
                        SizedBox(width: 5,),
                      Text('Point',
                      style: TextStyle(
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
                            children: const [
                              Icon(Icons.menu_book_outlined),
                              SizedBox(width: 10,),
                              Text('Riwayat Point')
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
          const Text('Menampilkan Rekomendasi Paket Paket'), 
          const Padding(padding: EdgeInsets.only(top : 10)),
          Expanded(
            child: ListView(
              scrollDirection : Axis.vertical,
               children:  [ 
                RekomCashOutModel(
                                 img :'assets/logo/cashout.svg' ,
                                 typeProduct : 'CashOut' ,
                                 nominal :20000 , 
                               ),
                               SizedBox(height: 20,),
                RekomCashOutModel(
                                 img :'assets/logo/cashout.svg' ,
                                 typeProduct : 'CashOut' ,
                                 nominal :20000 , 
                               ),
                                  SizedBox(height: 20,),
                 RekomCashOutModel(
                                 img :'assets/logo/cashout.svg' ,
                                 typeProduct : 'CashOut' ,
                                 nominal :20000 , 
                               ),
                                  SizedBox(height: 20,),
              RekomCashOutModel(
                                 img :'assets/logo/cashout.svg' ,
                                 typeProduct : 'CashOut' ,
                                 nominal :20000 , 
                               ),]),
          )
        ]) 
          

    );
  }
}