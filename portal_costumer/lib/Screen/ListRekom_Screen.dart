import 'package:flutter/material.dart';
import 'package:portal_costumer/Model/Navbar_model.dart';
import 'package:portal_costumer/Screen/Home_Screen.dart';
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
          title: Text('Rekomendasi'),
          centerTitle: true,
            leading: IconButton(
            icon: Icon(Icons.arrow_back, 
             color: Color.fromARGB(255, 66, 179, 235),
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
                  Text('Point Anda Saat ini'),
                  Text('Point Anda Saat ini'),
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
        ]) 
          

    );
  }
}