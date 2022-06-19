import 'package:flutter/material.dart';
import 'package:portal_costumer/Model/Pulsa_model.dart';
import 'package:portal_costumer/Model/paketData_model.dart';
import 'package:portal_costumer/Screen/ListRekomPaket_Screen.dart';
import 'package:portal_costumer/Screen/ListRekomPulsa_Screen.dart';
class PointScreen extends StatefulWidget {
  const PointScreen({ Key? key }) : super(key: key);

  @override
  State<PointScreen> createState() => _PointScreenState();
}

class _PointScreenState extends State<PointScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 350,
          child : Column(
            children: [
              SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
               children:[
                 SizedBox(width: 15,),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/logo/logo.jpg'),
                                       radius : 30.0,),
                  SizedBox(width : 10),
                  Column(
                    children: [
                       SizedBox(height: 15,),
                      Text('Halo , Indah Cahya',style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.w800),),
                    ],
                  ),
                ]
              ),
          Card(
              elevation: 10,
               child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    height: 130,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                     borderRadius: BorderRadius.all(Radius.circular(15.0))
                    ),
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
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
           borderRadius: BorderRadius.circular(10),
           elevation: 5,
           color: Color.fromARGB(255, 158, 188, 250),
           child: MaterialButton(
          padding:EdgeInsets.fromLTRB(20, 15, 20, 15) ,
          onPressed: (){
               // signIn(usernameController.text, passwordController.text);
           },
           child: Text('Tukar ke Paket Data', 
          textAlign: TextAlign.center,
          style: TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.bold),),  
      ),
   ),
        SizedBox(width: 10),
         Material(
           elevation: 5,
           color: Color.fromARGB(255, 158, 188, 250),
           borderRadius:  BorderRadius.circular(10),
           child: MaterialButton(
          padding:EdgeInsets.fromLTRB(20, 15, 20, 15) ,
          onPressed: (){
               // signIn(usernameController.text, passwordController.text);
           },
           child: Text('Tukar Ke pulsa', 
          textAlign: TextAlign.center,
          style: TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.bold),),  
      ),
   )
              ],
            ),
          SizedBox(height: 10),
         Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
           elevation: 5,
           borderRadius: BorderRadius.circular(10),
           color: Color.fromARGB(255, 158, 188, 250),
           child: MaterialButton(
          padding:EdgeInsets.fromLTRB(20, 15, 20, 15) ,
          onPressed: (){
               // signIn(usernameController.text, passwordController.text);
           },
           child: Text('Tukar ke Cashout', 
          textAlign: TextAlign.center,
          style: TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.bold),),  
      ),
   ),
       SizedBox(width: 10),
         Material(
           elevation: 5,
           borderRadius:  BorderRadius.circular(10),
           color: Color.fromARGB(255, 158, 188, 250),
           child: MaterialButton(
          padding:EdgeInsets.fromLTRB(20, 15, 20, 15) ,
          onPressed: (){
               // signIn(usernameController.text, passwordController.text);
           },
           child: Text('Tukar Ke E-Money', 
          textAlign: TextAlign.center,
          style: TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.bold),),  
      ),
   ),
              ],
            ),
      SizedBox(height : 10),
      Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Color.fromARGB(255, 158, 188, 250),
      child: MaterialButton(
        padding:EdgeInsets.fromLTRB(20, 15, 20, 15) ,
        minWidth: MediaQuery.of(context).size.width,
        onPressed: (){
          // signIn(usernameController.text, passwordController.text);
        },
        child: Text('Cek Benefit Penukaran Point', 
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold),),  
           ),
           )    
            ],
          ), ),
       Container(
                  height: 7, 
                  color: Colors.grey[300],),
        Expanded(
          child: 
          Container(
                height: 100,
                    child: Column(
                      children: [
                        // body
                        Expanded(child: ListView(
                          scrollDirection: Axis.vertical,
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          children: [
                            SizedBox(height : 20),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment : MainAxisAlignment.spaceBetween,
                            children: [ 
                             Text('Rekomendasi Pulsa Untuk Anda',
                             style: 
                             TextStyle(
                               inherit: false,
                               fontSize: 15,
                               color: Colors.black,
                               fontWeight: FontWeight.w600 ),), 
                              GestureDetector(
                                child: Text('Liat Semua',
                             style: 
                             TextStyle(
                               inherit: false,
                              fontSize: 12,
                               color: Colors.black ,
                                fontWeight: FontWeight.w800 ),),
                                onTap: (){
                                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>listRekom() ), (route) => false);
                                },),
                              ],
                          ),
                           SizedBox(height: 20,),
                            SingleChildScrollView(
                              scrollDirection : Axis.horizontal,
                              child: Row(
                           children: [
                               RekomendasiPulsa(
                                img :'assets/logo/logo.jpg',
                                pulsa : 'Pulsa 20RB' , 
                                point : 12,
                               ),
                               SizedBox(width: 20,),
                                 RekomendasiPulsa(
                                img :'assets/logo/logo.jpg',
                                pulsa :'Pulsa 40RB' , 
                                point : 15,
                               ),
                                  SizedBox(width: 20,),
                                 RekomendasiPulsa(
                                img :'assets/logo/logo.jpg',
                                pulsa : 'Pulsa 10RB' , 
                                point : 16,
                               ),
                                  SizedBox(width: 20,),
                                 RekomendasiPulsa(
                                img :'assets/logo/logo.jpg',
                                pulsa : 'Pulsa 12RB', 
                                point : 20,
                               ),
                                SizedBox(width: 20,),
                                 RekomendasiPulsa(
                                img :'assets/logo/logo.jpg',
                                pulsa : 'Pulsa 70RB', 
                                point : 30,
                               ),
                                SizedBox(width: 20,),
                                 RekomendasiPulsa(
                                img :'assets/logo/logo.jpg',
                                pulsa : 'Pulsa 20RB', 
                                point : 31,
                               ),
                                SizedBox(width: 20,),
                                 RekomendasiPulsa(
                                img :'assets/logo/logo.jpg',
                                pulsa :'Pulsa 80RB' , 
                                point : 200,
                               ),
                               
                              ],),
                            ),
                            Padding(padding: EdgeInsets.only(top: 20)),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment : MainAxisAlignment.spaceBetween,
                            children: [ 
                             Text('Rekomendasi Paket Untuk Anda',
                             style: 
                             TextStyle(
                               inherit: false,
                              fontSize: 15,
                               color: Colors.black,
                               fontWeight: FontWeight.w600
                               ),), 
                              GestureDetector(
                            child: Text('Liat Semua',
                             style: 
                             TextStyle(
                              inherit: false,
                              fontSize: 12,
                               color: Colors.black ,
                               fontWeight : FontWeight.w800
                               ),),
                              onTap: (){
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>listRekomPaket() ), (route) => false);
                              }, ),
                              ],
                         
                          ),
                           SizedBox(height: 20,),
                            SingleChildScrollView(
                              scrollDirection : Axis.horizontal,
                              child: Row(
                           children: [
                               RekomendasiPaket(
                                 img :'assets/logo/logo.jpg',
                                 point : 5,
                                 paket : 'XL 20GB' , 
                               ),
                               SizedBox(width: 20,),
                                 RekomendasiPaket(
                                 img :'assets/logo/logo.jpg' ,
                                 point : 12 ,
                                 paket :'Indosat 20GB' , 
                               ),
                                  SizedBox(width: 20,),
                                 RekomendasiPaket(
                                 img :'assets/logo/logo.jpg' ,
                                 point : 12,
                                 paket : 'Smartfren 40GB' , 
                               ),
                                  SizedBox(width: 20,),
                                 RekomendasiPaket(
                                 img :'assets/logo/logo.jpg' ,
                                 point : 13 ,
                                 paket : 'Telkomsel 10GB' , 
                               ),
                                SizedBox(width: 20,),
                                 RekomendasiPaket(
                                 img :'assets/logo/logo.jpg' ,
                                 point : 31,
                                 paket : 'XL 5GB', 
                               ),
                                SizedBox(width: 20,),
                                 RekomendasiPaket(
                                 img :'assets/logo/logo.jpg' ,
                                 point : 41,
                                 paket  : 'Oredo 12GB', 
                               ),
                                SizedBox(width: 20,),
                                 RekomendasiPaket(
                                 img :'assets/logo/logo.jpg' ,
                                 point : 12 ,
                                 paket : 'Esia 12GB', 
                               ),
                               
                              ],),
                            )
                          ],
                        )),
                      ],
                    ),
                                  
          ))

      ],
    );
  }
}