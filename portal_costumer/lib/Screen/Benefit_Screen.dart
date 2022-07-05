import 'package:flutter/material.dart';
import 'package:portal_costumer/Screen/Home_Screen.dart';
class BenefitScreen extends StatelessWidget {
  const BenefitScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : ListView(
        scrollDirection: Axis.vertical,
        children :[ 
          Column(
          crossAxisAlignment : CrossAxisAlignment.start ,
          children: [
            Padding(padding: EdgeInsets.only(top: 46)),
            Row(
              children: [
                SizedBox(width: 10,),
                Text('Benefit yang kamu dapatkan', style: TextStyle(
                  inherit : false,
                  color : Colors.black,
                  fontSize: 25,
                   fontWeight : FontWeight.w600,),),
              ],
            ),
              Padding(padding: EdgeInsets.only(top: 15)),
            Card(
              margin: EdgeInsets.only(right : 8.0, left: 8.0),
                 color: Color.fromARGB(97, 150, 150, 150),
              elevation : 10,
               shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              child: Container(
                height:  150,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top:20)),
                    Text('Kamu dapat melakukan penukaran poin dengan berbagai macam penawaran', style : TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                    Text('Sejak bergabung menjadi member C-', style : TextStyle(fontSize: 20, fontWeight: FontWeight.w700)), 
                    Text('Loyal ', style : TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                  ],
                ),
              ),
            ),
           Padding(padding: EdgeInsets.only(top:10)),
            Card(
               margin: EdgeInsets.only(right : 8.0, left: 8.0),
                 color: Color.fromARGB(97, 150, 150, 150),
              elevation : 10,
               shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              child: Container(
                height:  150,
                width: double.infinity,
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Padding(padding: EdgeInsets.only(top:30)),
                    Text('Dapatkan lebih banyak penawaran yang menarik dengan mengumpulkan poin yang sebanyak-banyaknya', style : TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),  
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top:10)),
            Card(
               margin: EdgeInsets.only(right : 8.0, left: 8.0),
                 color: Color.fromARGB(97, 150, 150, 150),
              elevation : 10,
               shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              child: Container(
                height:  161,
                width: double.infinity,
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top : 10)),
                    Text('Kamu dapat mengumpulkan poin', style : TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                    Text('melalui pembelian yang dilakukan pada halaman redeem dan dapat kamu', style : TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),  
                   Text('tukarkan secara langsung pada aplikasi C-Loyal', style : TextStyle(fontSize: 20, fontWeight: FontWeight.w700)), 
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top:10)),
            Card(
               margin: EdgeInsets.only(right : 8.0, left: 8.0),
                 color: Color.fromARGB(97, 150, 150, 150),
              elevation : 10,
               shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              child: Container(
                height:  150,
                width: double.infinity,
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top:25)),
                    Text('C-Loyal poin memberikanmu', style : TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                    Text('kemudahan untuk melakukan berbagai', style : TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),  
                    Text('transaksi degan cepat', style : TextStyle(fontSize: 20, fontWeight: FontWeight.w700)), 
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
          ],      
              ),
       Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Material(
          elevation: 5,
          color: Colors.blue,
          child: MaterialButton(
             padding:const EdgeInsets.fromLTRB(20, 15, 20, 15) ,
             onPressed: (){
             Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const HomeScreen() ), (route) => false);
          },
          child: const Text('OK, Mengerti', 
             textAlign: TextAlign.center,
             style: TextStyle(
             fontSize: 15,
             color: Colors.white,
             fontWeight: FontWeight.w800),),  
           ),
            )
        ],
       )
      ]),
    );
  }
}