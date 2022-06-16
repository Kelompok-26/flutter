import 'package:flutter/material.dart';
import 'package:portal_costumer/Model/Navbar_model.dart';
import 'package:portal_costumer/Model/listRekomPaket_model.dart';
class listRekomPaket extends StatefulWidget {
  const listRekomPaket({ Key? key }) : super(key: key);

  @override
  State<listRekomPaket> createState() => _listRekomPaketState();
}

class _listRekomPaketState extends State<listRekomPaket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( 
          backgroundColor:Colors.transparent,
          title: Text('Rekomendasi',style: TextStyle(color:Colors.black),),
          centerTitle: true,
            leading: IconButton(
            icon: Icon(Icons.arrow_back, 
             color: Colors.black,
          ),
          onPressed: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>itemNav() ), (route) => false);
          },
        ),
        ),
        body: Column(
           children :[
            Padding(padding: EdgeInsets.only(top : 10)),
             Card(
              elevation: 10,
               child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    height: 120,
                    width: 400,
                    color: Colors.blue,
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Point Anda Saat ini',
                      style: TextStyle(
                        fontWeight: FontWeight.w200 , 
                        color: Colors.white , 
                        fontSize: 15),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
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
                  SizedBox(height: 5,),
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
          Padding(padding: EdgeInsets.only(top : 10)),
          Text('Menampilkan Rekomendasi Paket Paket'), 
          Padding(padding: EdgeInsets.only(top : 10)),
          SingleChildScrollView(
            scrollDirection : Axis.vertical,
             child: Column(
                  children: [
               ListRekomPaket(
                                 img :'assets/logo/logo.jpg',
                                 point : 5,
                                 paket : 'XL 20GB' , 
                               ),
                               SizedBox(height: 20,),
              ListRekomPaket(
                                 img :'assets/logo/logo.jpg' ,
                                 point : 12 ,
                                 paket :'Indosat 20GB' , 
                               ),
                                  SizedBox(height: 20,),
              ListRekomPaket(
                                 img :'assets/logo/logo.jpg' ,
                                 point : 12,
                                 paket : 'Smartfren 40GB' , 
                               ),
                                  SizedBox(height: 20,),
              ListRekomPaket(
                                 img :'assets/logo/logo.jpg' ,
                                 point : 13 ,
                                 paket : 'Telkomsel 10GB' , 
                               ),
                           ]))
        ]) 
          

    );
  }
}