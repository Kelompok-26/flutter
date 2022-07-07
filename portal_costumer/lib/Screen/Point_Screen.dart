import 'package:flutter/material.dart';
import 'package:portal_costumer/Model/API/api_model.dart';
import 'package:portal_costumer/Model/Pulsa_model.dart';
import 'package:portal_costumer/Model/paketData_model.dart';
import 'package:portal_costumer/Screen/ListRekomPaket_Screen.dart';
import 'package:portal_costumer/Screen/ListRekomPulsa_Screen.dart';
import 'package:provider/provider.dart';
class PointScreen extends StatefulWidget {
  const PointScreen({ Key? key }) : super(key: key);

  @override
  State<PointScreen> createState() => _PointScreenState();
}

class _PointScreenState extends State<PointScreen> {
  APIModel? apimodel;
  @override
  void initState() {
     APIModel apimodel = Provider.of<APIModel>(context, listen: false);
     //mengambil api Product
     apimodel.getProduckAllModel();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final apimodel = Provider.of<APIModel>(context);
    return Column(
      children: [
        Container(
          height: 450,
          child : Column(
            children: [
             Padding(padding: EdgeInsets.only(top: 40)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
               children:[
                 const SizedBox(width: 15,),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/logo/logo.jpg'),
                                       radius : 30.0,),
                  const SizedBox(width : 10),
                  Column(
                    children: [
                       const SizedBox(height: 15,),
                      const Text('Halo , Indah Cahya',style: const TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.w800),),
                    ],
                  ),
                ]
              ),
          Card(
              shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
              color: Colors.blue,
              elevation: 10,
               child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    height: 130,
                    width: 400,
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
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
           borderRadius: BorderRadius.circular(10),
           elevation: 5,
           color: const Color.fromARGB(255, 158, 188, 250),
           child: MaterialButton(
          padding:const EdgeInsets.fromLTRB(20, 15, 20, 15) ,
          onPressed: (){
               // signIn(usernameController.text, passwordController.text);
           },
           child: const Text('Tukar ke Paket Data', 
          textAlign: TextAlign.center,
          style: TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.bold),),  
      ),
   ),
        const SizedBox(width: 10),
         Material(
           elevation: 5,
           color: const Color.fromARGB(255, 158, 188, 250),
           borderRadius:  BorderRadius.circular(10),
           child: MaterialButton(
          padding:const EdgeInsets.fromLTRB(20, 15, 20, 15) ,
          onPressed: (){
               // signIn(usernameController.text, passwordController.text);
           },
           child: const Text('Tukar Ke pulsa', 
          textAlign: TextAlign.center,
          style: TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.bold),),  
      ),
   )
              ],
            ),
          const SizedBox(height: 10),
         Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
           elevation: 5,
           borderRadius: BorderRadius.circular(10),
           color: const Color.fromARGB(255, 158, 188, 250),
           child: MaterialButton(
          padding:const EdgeInsets.fromLTRB(20, 15, 20, 15) ,
          onPressed: (){
               // signIn(usernameController.text, passwordController.text);
           },
           child: const Text('Tukar ke Cashout', 
          textAlign: TextAlign.center,
          style: TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.bold),),  
      ),
   ),
       const SizedBox(width: 10),
         Material(
           elevation: 5,
          borderRadius: BorderRadius.circular(10),
           color: const Color.fromARGB(255, 158, 188, 250),
           child: MaterialButton(
          padding:const EdgeInsets.fromLTRB(20, 15, 20, 15) ,
          onPressed: (){
               // signIn(usernameController.text, passwordController.text);
           },
           child: const Text('Tukar Ke E-Money', 
          textAlign: TextAlign.center,
          style: TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.bold),),  
      ),
   ),
              ],
            ),
      const SizedBox(height : 10),
      Material(
           elevation: 5,
          borderRadius: BorderRadius.circular(10),
           color: const Color.fromARGB(255, 158, 188, 250),
           child: MaterialButton(
          padding:const EdgeInsets.fromLTRB(20, 15, 20, 15) ,
          onPressed: (){
               // signIn(usernameController.text, passwordController.text);
           },
           child: const Text('Cek Benefit Penukaran Point', 
          textAlign: TextAlign.center,
          style: TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.bold),),  
      ),
   ),  
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
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          children: [
                            const SizedBox(height : 20),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment : MainAxisAlignment.spaceBetween,
                            children: [ 
                             const Text('Rekomendasi Pulsa Untuk Anda',
                             style: 
                             TextStyle(
                               inherit: false,
                               fontSize: 15,
                               color: Colors.black,
                               fontWeight: FontWeight.w600 ),), 
                              GestureDetector(
                                child: const Text('Liat Semua',
                             style: 
                             TextStyle(
                               inherit: false,
                              fontSize: 12,
                               color: Colors.black ,
                                fontWeight: FontWeight.w800 ),),
                                onTap: (){
                                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const listRekom() ), (route) => false);
                                },),
                              ],
                          ),
                           const SizedBox(height: 20,),
                            SizedBox(
                            height: 197 ,
                            // child: Row(
                            //   children: [
                            //     Expanded(
                            //       child: ListView.builder(
                            //         scrollDirection: Axis.horizontal,
                            //         itemCount: apimodel.throwProduct,
                            //        itemBuilder: ( (context, index) {
                            //         return productall(
                            //          typeProduct : apimodel.produckmodel?.typeProduct ,
                            //           providerName :  apimodel.produckmodel?.providerName, 
                            //           productName : apimodel.produckmodel?.productName, 
                            //          nominal : apimodel.produckmodel?.nominal,
                            //           context: context);
                            //         })
                            //                                   ),
                            //     ),
                            //   ],
                            // ),
                          ),
                            const Padding(padding: EdgeInsets.only(top: 20)),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment : MainAxisAlignment.spaceBetween,
                            children: [ 
                             const Text('Rekomendasi Paket Untuk Anda',
                             style: 
                             const TextStyle(
                               inherit: false,
                              fontSize: 15,
                               color: Colors.black,
                               fontWeight: FontWeight.w600
                               ),), 
                              GestureDetector(
                            child: const Text('Liat Semua',
                             style: 
                             TextStyle(
                              inherit: false,
                              fontSize: 12,
                               color: Colors.black ,
                               fontWeight : FontWeight.w800
                               ),),
                              onTap: (){
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const listRekomPaket() ), (route) => false);
                              }, ),
                              ],
                         
                          ),
                           const SizedBox(height: 20,),
                            SingleChildScrollView(
                              scrollDirection : Axis.horizontal,
                              child: Row(
                           children: [
                             RekomendasiPaket(
                               image :'assets/logo/paket.svg',
                                 point : 5,
                                 paket : 'XL 20GB' , 
                               ),
                               SizedBox(width: 20,),
                                 RekomendasiPaket(
                                    image :'assets/logo/paket.svg',
                                 point : 12 ,
                                 paket :'Indosat 20GB' , 
                               ),
                                  SizedBox(width: 20,),
                                 RekomendasiPaket(
                                    image :'assets/logo/paket.svg',
                                 point : 12,
                                 paket : 'Smartfren 40GB' , 
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