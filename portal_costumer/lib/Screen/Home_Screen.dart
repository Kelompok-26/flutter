// ignore_for_file: prefer_const_constructors, file_names
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
   late APIModel apimodel;
   List<APIModel> produckallmodel =[];
  @override
  void initState() {
     APIModel apimodel = Provider.of<APIModel>(context, listen: false);
     //mengambil api Product
     apimodel.getProduckAllModel();
    super.initState();
  }
    Widget GetDataProduct(){
    return Column(
      children: 
      apimodel.throwProduct.map((e) => RekomendasiPulsa(
         typeProduct: e.typeProduct,
         productName : e.productName,
         providerName: e.providerName,
         nominal : e.nominal
        )).toList());
  }
  @override
  Widget build(BuildContext context) {
     apimodel = Provider.of<APIModel>(context);
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: 250,
              width: double.infinity,
              color: Color.fromARGB(255, 54, 36, 255),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10.0)),
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
                                   radius : 20.0,),
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
                                      children: const [
                                        Text('POINT KAMU', style: 
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
                              Container(
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
                        Expanded(child: ListView(
                          scrollDirection: Axis.vertical,
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          children: [
                            SizedBox(height : 20),
                            SingleChildScrollView(
                              scrollDirection : Axis.horizontal,
                              child: Row(
                           children: [
                               ListPromo(
                                 image: 'assets/logo/logo.jpg',
                                 title: 'Promo',
                                 subtitle: 'PromoKecil',
                               ),
                               SizedBox(width: 20,),
                                 ListPromo(
                                 image: 'assets/logo/logo.jpg',
                                 title: 'Promo',
                                 subtitle: 'PromoKecil',
                               ),
                                  SizedBox(width: 20,),
                                 ListPromo(
                                 image: 'assets/logo/logo.jpg',
                                 title: 'Promo',
                                 subtitle: 'PromoKecil',
                               ),
                                  SizedBox(width: 20,),
                                 ListPromo(
                                 image: 'assets/logo/logo.jpg',
                                 title: 'Promo',
                                 subtitle: 'PromoKecil',
                               ),
                                SizedBox(width: 20,),
                                 ListPromo(
                                 image: 'assets/logo/logo.jpg',
                                 title: 'Promo',
                                 subtitle: 'PromoKecil',
                               ),
                                SizedBox(width: 20,),
                                 ListPromo(
                                 image: 'assets/logo/logo.jpg',
                                 title: 'Promo',
                                 subtitle: 'PromoKecil',
                               ),
                                SizedBox(width: 20,),
                                 ListPromo(
                                 image: 'assets/logo/logo.jpg',
                                 title: 'Promo',
                                 subtitle: 'PromoKecil',
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
                            SingleChildScrollView(
                              scrollDirection : Axis.horizontal,
                              child: Row(
                           children: [
                                  SizedBox(width: 20,),
                               GetDataProduct()
                              ],),
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



     