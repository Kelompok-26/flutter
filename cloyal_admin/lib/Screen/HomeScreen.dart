// ignore_for_file: prefer_const_constructors

import 'package:cloyal_admin/Drawer/NavigationDrawer.dart';
import 'package:cloyal_admin/Model/ApiModel/ApiModel.dart';
import 'package:cloyal_admin/Model/ProdukModel.dart';
import 'package:cloyal_admin/Model/PromoList_model.dart';
import 'package:cloyal_admin/Screen/HistoryScreen.dart';
import 'package:cloyal_admin/Screen/PoinScreen.dart';
import 'package:cloyal_admin/Screen/StockScreen.dart';
import 'package:cloyal_admin/Screen/UserScreen.dart';
import 'package:cloyal_admin/Widget/Background.dart';
import 'package:cloyal_admin/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  APIModel? apimodel;
 

  @override
  void initState() {
    APIModel apimodel = Provider.of<APIModel>(context, listen: false);
    apimodel.getProduckAllModel();
    apimodel.getTransaksiModel();
    //mengambil api Product
    //  WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   APIModel apimodel = Provider.of<APIModel>(context, listen: false);
    //mengambil api UserAccount
    // final editProfileModel =  Provider.of<editProfile>(context, listen: false);
    // final id = editProfileModel.id;
    // final token = editProfileModel.token;

    //  apimodel.getUserAcccount(id:id , token: token );});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final apimodel = Provider.of<APIModel>(context);
    return Scaffold(
      drawer: NavigationDrawer(),
      body: Stack(
        children: [
          Expanded(
            child: background(),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 25),
                            ),
                            const Text(
                              'Hello Brooklyn',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            const Text(
                              'Welcome Back',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(width: 20,),
                      Icon(
                        Icons.notifications,
                        color: whiteColor,
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Container(
                  height: 130,
                  width: 380,
                  child: Card(
                    elevation: 1.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/1.png',
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '57',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                              Text(
                                'Total pengguna, \nC-Loyal',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 130,
                  width: 380,
                  child: Card(
                    elevation: 1.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/2.png',
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '20',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                              Text(
                                'Total penukaran yang, \ndilakukan hari ini',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            const Text(
                              'Stok Produk Tersedia',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 110,
                          child: Row(
                            children: [
                              Expanded(
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount:
                                      apimodel.produckmodel?.data?.length,
                                  itemBuilder: ((context, index) {
                                    return ListPromo(
                                      image: 'assets/images/paket_data.png',
                                      stock: apimodel
                                          .produckmodel!.data![index].stock!,
                                      typeProduct: apimodel.produckmodel!
                                          .data![index].typeProduct
                                          .toString(),
                                    );
                                  }),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            const Text(
                              'Transaksi Terakhir',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            const Text(
                              'Semua',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.all(0.0),
                        //   child: ListView.builder(
                        //     itemCount: apimodel.transaksiModel!.data!.length,
                        //     shrinkWrap: true,
                        //     itemBuilder: (BuildContext context, int index) =>
                        //         Container(
                        //       width: MediaQuery.of(context).size.width,
                        //       padding: const EdgeInsets.symmetric(
                        //           horizontal: 11.0, vertical: 5.0),
                        //       child: Card(
                        //         elevation: 1.0,
                        //         shape: RoundedRectangleBorder(
                        //           borderRadius: BorderRadius.circular(15.0),
                        //         ),
                        //         child: Container(
                        //           width: MediaQuery.of(context).size.width,
                        //           padding: const EdgeInsets.symmetric(
                        //               horizontal: 12.0, vertical: 12.0),
                        //           child: Row(
                        //             mainAxisAlignment:
                        //                 MainAxisAlignment.spaceBetween,
                        //             crossAxisAlignment:
                        //                 CrossAxisAlignment.center,
                        //             children: [
                        //               Row(
                        //                 crossAxisAlignment:
                        //                     CrossAxisAlignment.center,
                        //                 children: [
                        //                   const Text(
                        //                     '3/4/16',
                        //                     style: TextStyle(
                        //                       color: Colors.black,
                        //                       fontWeight: FontWeight.normal,
                        //                       fontSize: 20,
                        //                     ),
                        //                   ),
                        //                   const SizedBox(
                        //                     width: 8,
                        //                   ),
                        //                   Column(
                        //                     crossAxisAlignment:
                        //                         CrossAxisAlignment.center,
                        //                     children: [
                        //                       Text(
                        //                         apimodel.transaksiModel!.data![index].user!.name.toString(),
                        //                         style: const TextStyle(
                        //                             color: Colors.black,
                        //                             fontSize: 16.0,
                        //                             fontWeight:
                        //                                 FontWeight.bold),
                        //                       ),
                        //                       Text(
                        //                         apimodel.transaksiModel!.data![index].number!,
                        //                         style: const TextStyle(
                        //                             color: Colors.grey),
                        //                       ),
                        //                     ],
                        //                   ),
                        //                   const SizedBox(
                        //                     width: 30,
                        //                   ),
                        //                   Column(
                        //                     crossAxisAlignment:
                        //                         CrossAxisAlignment.center,
                        //                     children: [
                        //                       Text(
                        //                         apimodel.transaksiModel!.data![index].product!.typeProduct.toString(),
                        //                         style: const TextStyle(
                        //                             color: Colors.black,
                        //                             fontSize: 16.0,
                        //                             fontWeight:
                        //                                 FontWeight.bold),
                        //                       ),
                        //                       Text(
                        //                         apimodel.transaksiModel!.data![index].product!.nominal.toString(),
                        //                         style: const TextStyle(
                        //                             color: Colors.grey),
                        //                       ),
                        //                     ],
                        //                   ),
                        //                 ],
                        //               ),
                        //               Container(
                        //                 alignment: Alignment.center,
                        //                 // padding: EdgeInsets.symmetric(
                        //                 //     horizontal: 5.0, vertical: 5.0),
                        //                 child: FlatButton(
                        //                   onPressed: () {},
                        //                   color: Colors.orange,
                        //                   shape: RoundedRectangleBorder(
                        //                     borderRadius:
                        //                         BorderRadius.circular(15.0),
                        //                   ),
                        //                   child: const Text(
                        //                     'Sukses',
                        //                     style: const TextStyle(
                        //                       color: Colors.white,
                        //                     ),
                        //                   ),
                        //                 ),
                        //               ),
                        //             ],
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      //                   ],
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
