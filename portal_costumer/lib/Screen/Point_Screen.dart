// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:portal_costumer/Model/API/api_model.dart';
import 'package:portal_costumer/Model/Product_model.dart';
import 'package:portal_costumer/Screen/ListRekomPaket_Screen.dart';
import 'package:portal_costumer/Screen/ListRekomPulsa_Screen.dart';
import 'package:portal_costumer/Screen/RekomEmoney_screen.dart';
import 'package:portal_costumer/Screen/RekomcashOut_screen.dart';
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
   final listAllProduct = apimodel.produckmodel?.data;
      final listAllpulsa= listAllProduct?.
        where((element) => element.typeProduct == 'pulsa',).toList();
      final listAllpaket= listAllProduct?.
        where((element) => element.typeProduct == 'paket',).toList();
     final listAllcashout= listAllProduct?.
        where((element) => element.typeProduct == 'CashOut',).toList();
    final listAllemoney= listAllProduct?.
        where((element) => element.typeProduct == 'Emoney',).toList();
    return Column(
      children: [
        SizedBox(
          height: 450,
          child : Column(
            children: [
             const Padding(padding: EdgeInsets.only(top: 40)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
               children:[
                 const SizedBox(width: 15,),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/logo/logo.jpg'),
                                       radius : 30.0,),
                  const SizedBox(width : 10),
                  Column(
                    children: const [
                       SizedBox(height: 15,),
                      Text('Halo , Indah Cahya',style: TextStyle(
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
          SizedBox(
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
                            child: Row(
                              children: [
                                Expanded(
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: listAllpulsa?.length,
                                   itemBuilder: ( (context, index) {
                                    return productall(
                                      typeProduct : listAllpulsa?[index].typeProduct,
                                      providerName :listAllpulsa?[index].providerName,
                                      productName : listAllpulsa?[index].productName, 
                                      nominal :listAllpulsa?[index].nominal,
                                      point: listAllpulsa?[index].point,
                                      image : 'assets/logo/pulsa.svg',
                                      context: context);
                                    })
                                                              ),
                                ),
                              ],
                            ),
                          ),
                            const Padding(padding: EdgeInsets.only(top: 20)),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment : MainAxisAlignment.spaceBetween,
                            children: [ 
                             const Text('Rekomendasi Paket Untuk Anda',
                             style: 
                             TextStyle(
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
                            SizedBox(
                            height: 197 ,
                            child: Row(
                              children: [
                                Expanded(
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: listAllpaket?.length,
                                   itemBuilder: ( (context, index) {
                                    return productall(
                                      typeProduct : listAllpaket?[index].typeProduct,
                                      providerName :listAllpaket?[index].providerName,
                                      productName : listAllpaket?[index].productName, 
                                      nominal :listAllpaket?[index].nominal,
                                      point: listAllpaket?[index].point,
                                      image : 'assets/logo/paket.svg',
                                      context: context);
                                    })
                                                              ),
                                ),
                              ],
                            ),
                          ),
                        const Padding(padding: EdgeInsets.only(top: 20)),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment : MainAxisAlignment.spaceBetween,
                            children: [ 
                             const Text('Rekomendasi Cash Out Untuk Anda',
                             style: 
                             TextStyle(
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
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const ListRekomCashout() ), (route) => false);
                              }, ),
                              ],
                          ),
                         const SizedBox(height: 20,),
                        SizedBox(
                            height: 197 ,
                            child: Row(
                              children: [
                                Expanded(
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: listAllcashout?.length,
                                   itemBuilder: ( (context, index) {
                                    return productall(
                                      typeProduct : listAllcashout?[index].typeProduct,
                                      providerName :listAllcashout?[index].providerName,
                                      productName : listAllcashout?[index].productName, 
                                      nominal :listAllcashout?[index].nominal,
                                      point: listAllcashout?[index].point,
                                      image : 'assets/logo/cashout.svg',
                                      context: context);
                                    })
                                                              ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment : MainAxisAlignment.spaceBetween,
                            children: [ 
                             Text('Rekomendasi E Money Untuk Anda'), 
                              GestureDetector(
                               child: Text('Liat Semua'),
                              onTap: (){
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>ListRekomEmoney() ), (route) => false);
                              }, ),
                              ],
                         
                          ),
                           SizedBox(height: 20,),
                            SizedBox(
                            height: 197 ,
                            child: Row(
                              children: [
                                Expanded(
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: listAllemoney?.length,
                                   itemBuilder: ( (context, index) {
                                    return productall(
                                      typeProduct : listAllemoney?[index].typeProduct,
                                      providerName :listAllemoney?[index].providerName,
                                      productName : listAllcashout?[index].productName, 
                                      nominal :listAllcashout?[index].nominal,
                                      point: listAllcashout?[index].point,
                                      image : 'assets/logo/emoney.svg',
                                      context: context);
                                    })
                                                              ),
                                ),
                              ],
                            ),
                          ),
                         
                          ],
                        )),
                      ],
                    ),
                                  
          ))

      ],
    );
  }
}