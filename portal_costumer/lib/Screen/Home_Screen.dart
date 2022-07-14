// ignore_for_file: prefer_const_constructors, file_names, unnecessary_import, prefer_const_literals_to_create_immutables
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portal_costumer/Model/ModelClass/editProfile_view_model.dart';
import 'package:portal_costumer/Screen/Benefit_Screen.dart';
import 'package:portal_costumer/Screen/FAQ_Screen.dart';
import 'package:portal_costumer/Screen/RekomEmoney_screen.dart';
import 'package:portal_costumer/Screen/RekomcashOut_screen.dart';
import 'package:portal_costumer/Screen/informasi_Screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:portal_costumer/Model/API/api_model.dart';
import 'package:portal_costumer/Model/Clippath_model.dart';
import 'package:portal_costumer/Model/PromoList_model.dart';
import 'package:portal_costumer/Model/Product_model.dart';
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
     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {   
      APIModel apimodel = Provider.of<APIModel>(context, listen: false);
     //mengambil api UserAccount
    final editProfileModel =  Provider.of<editProfile>(context, listen: false);
    final id = editProfileModel.id;
    final token = editProfileModel.token;

     apimodel.getUserAcccount(id:id , token: token );});
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final apimodel = Provider.of<APIModel>(context);
   final listAllProduct = apimodel.produckmodel?.data;
   final listAllpulsa= listAllProduct?.
        where((element) => element.typeProduct == 'Pulsa',).toList();
  final listAllpaket= listAllProduct?.
        where((element) => element.typeProduct == 'Paket Data',).toList();
   final listAllcashout= listAllProduct?.
        where((element) => element.typeProduct == 'Cashout',).toList();
  final listAllemoney= listAllProduct?.
        where((element) => element.typeProduct == 'E-Money',).toList();
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
                     children:  [
                   SizedBox(height: 20,),
                  Text('Selamat datang', style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.w100,
                    color: Colors.white),),
                   Text('${apimodel.useraccount?.data?.name}', style: TextStyle(
                    fontSize: 15, 
                    fontWeight: FontWeight.w500, 
                    color: Colors.white)),
                     ],
                   ),
                   SizedBox(width: MediaQuery.of(context).size.width * 0.28,),
                   GestureDetector(
                    onTap: (){
                           Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>FaqScreen() ), (route) => false);
                        },
                     child: CircleAvatar( backgroundImage: AssetImage('assets/logo/question.png'),
                                     radius : 15.0,),
                   ),
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
                                        Text('${apimodel.useraccount?.data?.point}', style: 
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
                            SizedBox(
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



     