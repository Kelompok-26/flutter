// ignore_for_file: prefer_const_constructors, file_names
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portal_costumer/Model/Emoney_model.dart';
import 'package:portal_costumer/Model/cashOut_model.dart';
import 'package:portal_costumer/Screen/Benefit_Screen.dart';
import 'package:portal_costumer/Screen/RekomEmoney_screen.dart';
import 'package:portal_costumer/Screen/RekomcashOut_screen.dart';
import 'package:portal_costumer/Screen/informasi_Screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:portal_costumer/Model/API/api_model.dart';
import 'package:portal_costumer/Model/Clippath_model.dart';
import 'package:portal_costumer/Model/ModelClass/Produck_model.dart';
import 'package:portal_costumer/Model/PromoList_model.dart';
import 'package:portal_costumer/Model/Pulsa_model.dart';
import 'package:portal_costumer/Model/paketData_model.dart';
import 'package:portal_costumer/Screen/ListRekomPaket_Screen.dart';
import 'package:portal_costumer/Screen/ListRekomPulsa_Screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: 
            Container(
              height: 250,
              width: double.infinity,
              color: Color.fromARGB(255, 54, 36, 255),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(25.0)),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(8.0)),
                  CircleAvatar( backgroundImage: AssetImage('assets/logo/logo.jpg'),
                                   radius : 30.0,),
                  SizedBox(width: 5,),
                   Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                     children: const [
                   SizedBox(height: 20,),
                  Text('Selamat datang', style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.w100,
                    color: Colors.white),),
                   Text('Fradricast', style: TextStyle(
                    fontSize: 15, 
                    fontWeight: FontWeight.w500, 
                    color: Colors.white)),
                     ],
                   ),
                   SizedBox(width: MediaQuery.of(context).size.width * 0.28,),
                   CircleAvatar( backgroundImage: AssetImage('assets/logo/question.png'),
                                   radius : 15.0,),
                   ],
                 ),
                ],
              ),
            ),
          ),


          Container(
            margin: EdgeInsets.only(top: 90),
            child:Column(
              children: [
                Padding(padding: EdgeInsets.only(top : 20)),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  // color: Colors.red,
                  child: Column(
                    children: [
                      ClipPath(
                        clipper: ClipinfoClass(),
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: const [
                                Color.fromARGB(255, 14, 0, 166),
                                Color.fromARGB(0, 54, 36, 255)
                            ])
                          ),
                          child: Row(
                            mainAxisAlignment :MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: null,
                                  borderRadius: BorderRadius.all(Radius.circular(15.0))
                                ),
                                height: 40,
                                 width: 130,
                                  child: Row(
                                     mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                       mainAxisAlignment : MainAxisAlignment.center,
                                       crossAxisAlignment :CrossAxisAlignment.center,
                                      children:  [
                                        Text('Point Anda', style: 
                                        TextStyle(
                                          fontSize: 12, 
                                          fontWeight: FontWeight.bold),),
                                        Text('200', style: 
                                        TextStyle(
                                          fontSize: 12, 
                                          fontWeight: FontWeight.w900),),
                                      ],
                                ),
                                     SizedBox(
                                 height: 27,
                                 width: 27,
                                 child: Image.asset('assets/logo/logo-bagcoin.png', fit: BoxFit.contain,)),
                                    ],
                                  ),
                              ),
                              GestureDetector(
                                onTap : (){
                               Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const BenefitScreen() ), (route) => false);
                                },
                                child: Container(
                                   height: 40,
                                   width: 130,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: null,
                                    borderRadius: BorderRadius.all(Radius.circular(15.0))
                                  ),
                                 child: Row(
                                       mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                         mainAxisAlignment : MainAxisAlignment.center,
                                         crossAxisAlignment :CrossAxisAlignment.center,
                                        children: const [
                                          Text('Cari Tahu' ,style: 
                                          TextStyle(
                                            fontSize: 12, 
                                            fontWeight: FontWeight.bold),),
                                          Text('Benefit Mu', style: 
                                          TextStyle(
                                            fontSize: 12, 
                                            fontWeight: FontWeight.bold),),
                                        ],
                                  ),
                                      SizedBox(
                                   height: 27,
                                   width: 27,
                                   child: Image.asset('assets/logo/logo-benefit.png', fit: BoxFit.contain,)),
                                      ],
                                    ),
                                ),
                              ),
  
                            ],
                          ),
                        ),
                      ),
                      Material(
                        elevation: 5,
                         borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(201, 0, 1, 78),
                        child: MaterialButton(
                               minWidth: MediaQuery.of(context).size.width,
                               onPressed: (){
                                 Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>InformasiScreen() ), (route) => false);
                             },
                           child: Row(
                             children: [
                               SizedBox(
                                 height: 27,
                                 width: 27,
                                 child: Image.asset('assets/logo/logo-bantuan.png', fit: BoxFit.contain,)),
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: const [
                                   Text('Tahukah Cara Menggunakan Poin ?', 
                                   textAlign: TextAlign.start,
                                   style: TextStyle(
                                   fontWeight: FontWeight.w700,
                                   fontSize: 12,
                                   color: Colors.white,),),
                                   Text('tap here !', 
                                   textAlign: TextAlign.start,
                                   style: TextStyle(
                                   fontWeight : FontWeight.w100,
                                   fontSize: 12,
                                   color: Colors.white,),),
                                 ],
                               ),
                             ],
                           ),
                        ),
                      ),
                    ],
                  ),
                ),



                Container(
                  height: 7, 
                  color: Colors.grey[300],),




                  Expanded(
                    child: SizedBox(
                    height: 100,
                    child: Column(
                      children: [
                        // body
                        Expanded(
                          child: ListView(
                          scrollDirection: Axis.vertical,
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          children: [
                            SizedBox(height : 20),
                            SingleChildScrollView(
                              scrollDirection : Axis.horizontal,
                              child: Row(
                           children: [
                               ListPromo(
                                 image: 'assets/logo/listPromo.svg',
                               ),
                               SizedBox(width: 20,),
                                 ListPromo(
                                 image: 'assets/logo/listPromo2.svg',
                               ),
                                 
                              ],),
                            ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment : MainAxisAlignment.spaceBetween,
                            children: [ 
                             Text('Rekomendasi Pulsa Untuk Anda'), 
                              GestureDetector(
                                child: Text('Liat Semua'),
                                onTap: (){
                                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>listRekom() ), (route) => false);
                                },),
                              ],
                          ),
                           SizedBox(height: 20,),
                          SizedBox(
                            height: 197 ,
                            child: Row(
                              children: [
                                // Expanded(
                                //   child: ListView.builder(
                                //     scrollDirection: Axis.horizontal,
                                //     itemCount: apimodel.produckmodel?,
                                //    itemBuilder: ( (context, index) {
                                //     return productall(
                                //       typeProduct : apimodel.produckmodel?.typeProduct,
                                //       providerName :apimodel.produckmodel?.providerName, 
                                //       productName : apimodel.produckmodel?.productName, 
                                //       nominal :apimodel.produckmodel?.nominal,
                                //       context: context);
                                //     })
                                //                               ),
                                // ),
                              ],
                            ),
                          ),
                            Padding(padding: EdgeInsets.only(top: 20)),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment : MainAxisAlignment.spaceBetween,
                            children: [ 
                             Text('Rekomendasi Paket Untuk Anda'), 
                              GestureDetector(
                               child: Text('Liat Semua'),
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
                            ),
                           Padding(padding: EdgeInsets.only(top: 20)),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment : MainAxisAlignment.spaceBetween,
                            children: [ 
                             Text('Rekomendasi Cash Out Untuk Anda'), 
                              GestureDetector(
                               child: Text('Liat Semua'),
                              onTap: (){
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>ListRekomCashout() ), (route) => false);
                              }, ),
                              ],
                         
                          ),
                           SizedBox(height: 20,),
                            SingleChildScrollView(
                              scrollDirection : Axis.horizontal,
                              child: Row(
                           children: [
                               cashOut(
                                 image :'assets/logo/cashout.svg',
                                 typeProduct : 'Cashout',
                                 nominal : 30000 ,
                                 context: context, 
                               ),
                               SizedBox(width: 20,),
                                   cashOut(
                                image :'assets/logo/cashout.svg',
                                 typeProduct : 'Cashout',
                                 nominal : 30000 ,
                                 context: context, 
                               ),
                                  SizedBox(width: 20,),
                                   cashOut(
                                 image :'assets/logo/cashout.svg',
                                 typeProduct : 'Cashout',
                                 nominal : 30000 ,
                                 context: context, 
                               ), 
                               
                              ],),
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
                            SingleChildScrollView(
                              scrollDirection : Axis.horizontal,
                              child: Row(
                           children: [
                               Emoney(
                                image :'assets/logo/emoney.svg',
                                 typeProduct : 'Emoney',
                                 nominal : 20000 , 
                                 context: context, 
                               ),
                               SizedBox(width: 20,),
                                 Emoney(
                                   image :'assets/logo/emoney.svg',
                                 typeProduct : 'Emoney',
                                 nominal : 20000 , 
                                 context: context, 
                               ),
                                  SizedBox(width: 20,),
                                 Emoney(
                                        image :'assets/logo/emoney.svg',
                                 typeProduct : 'Emoney',
                                 nominal : 20000 , 
                                 context: context, 
                               ), 
                             ],),
                            ),

                            Container(
                              height: 200,
                              width: double.infinity,
                              child: SvgPicture.asset('assets/logo/Promo.svg',fit : BoxFit.contain ),
                            )
                          ],
                        )),
                      ],
                    ),
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
    }
    }



     