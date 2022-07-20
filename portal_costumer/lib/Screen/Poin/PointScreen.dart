// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portal_costumer/Model/API/api_model.dart';
import 'package:portal_costumer/Model/ModelClass/editProfile_view_model.dart';
import 'package:portal_costumer/Model/Widget/Product_model.dart';
import 'package:portal_costumer/Screen/Informasi/Benefit_Screen.dart';
import 'package:portal_costumer/Screen/Profil/History_Screen.dart';
import 'package:portal_costumer/Screen/Rekomendasi/ListPaketScreen.dart';
import 'package:portal_costumer/Screen/Rekomendasi/ListPulsaScreen.dart';
import 'package:portal_costumer/Screen/Rekomendasi/EmoneyScreen.dart';
import 'package:portal_costumer/Screen/Rekomendasi/CashoutScreen.dart';

import 'package:provider/provider.dart';

class PointScreen extends StatefulWidget {
  const PointScreen({Key? key}) : super(key: key);

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
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      APIModel apimodel = Provider.of<APIModel>(context, listen: false);
      //mengambil api UserAccount
      final editProfileModel = Provider.of<editProfile>(context, listen: false);
      final id = editProfileModel.id;
      final token = editProfileModel.token;

      apimodel.getUserAcccount(id: id, token: token);
    });
    super.initState();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final apimodel = Provider.of<APIModel>(context);
    final listAllProduct = apimodel.produckmodel?.data;
    final listAllpulsa = listAllProduct
        ?.where(
          (element) => element.typeProduct == 'Pulsa',
        )
        .toList();
    final listAllpaket = listAllProduct
        ?.where(
          (element) => element.typeProduct == 'Paket Data',
        )
        .toList();
    final listAllcashout = listAllProduct
        ?.where(
          (element) => element.typeProduct == 'Cashout',
        )
        .toList();
    final listAllemoney = listAllProduct
        ?.where(
          (element) => element.typeProduct == 'E-Money',
        )
        .toList();
    return Column(
      children: [
        SizedBox(
          height: 250,
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 40)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: SvgPicture.asset(
                      'assets/logo/Account circle.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Halo, ${apimodel.useraccount?.data?.name}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Color(0xFFF6F5F5),
                    elevation: 1,
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        const Icon(
                          Icons.point_of_sale, size: 35,
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Point Anda Saat ini',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF00334E),
                                fontSize: 15,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '${apimodel.useraccount?.data?.point}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF00334E),
                                      fontSize: 15),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Poin',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF00334E),
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF145374),
                  child: MaterialButton(
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BenefitScreen(),
                          ),
                          (route) => false);
                    },
                    child: const Text(
                      'Cek Benefit Penukaran Point',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Container(
        //   height: 7,
        //   color: Colors.grey[300],
        // ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: SizedBox(
              height: 361,
              child: Column(
                children: [
                  // body
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      children: [
                        const SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Pulsa',
                              style: TextStyle(
                                  inherit: false,
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            GestureDetector(
                              child: const Text(
                                'Semua',
                                style: TextStyle(
                                    inherit: false,
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800),
                              ),
                              onTap: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const listRekom()),
                                    (route) => false);
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 197,
                          child: Row(
                            children: [
                              Expanded(
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: listAllpulsa?.length,
                                    itemBuilder: ((context, index) {
                                      return productall(
                                          id: listAllpulsa![index].id!,
                                          typeProduct: listAllpulsa[index]
                                              .typeProduct
                                              .toString(),
                                          providerName: listAllpulsa[index]
                                              .providerName
                                              .toString(),
                                          productName: listAllpulsa[index]
                                              .productName
                                              .toString(),
                                          nominal: listAllpulsa[index].nominal!,
                                          point: listAllpulsa[index].point!,
                                          image: 'assets/logo/pulsa.svg',
                                          context: context);
                                    })),
                              ),
                            ],
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 20)),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Paket',
                              style: TextStyle(
                                  inherit: false,
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            GestureDetector(
                              child: const Text(
                                'Semua',
                                style: TextStyle(
                                    inherit: false,
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800),
                              ),
                              onTap: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const listRekomPaket()),
                                    (route) => false);
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 197,
                          child: Row(
                            children: [
                              Expanded(
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: listAllpaket?.length,
                                    itemBuilder: ((context, index) {
                                      return productall(
                                          id: listAllpaket![index].id!,
                                          typeProduct: listAllpaket[index]
                                              .typeProduct
                                              .toString(),
                                          providerName: listAllpaket[index]
                                              .providerName
                                              .toString(),
                                          productName: listAllpaket[index]
                                              .productName
                                              .toString(),
                                          nominal: listAllpaket[index].nominal!,
                                          point: listAllpaket[index].point!,
                                          image: 'assets/logo/paket.svg',
                                          context: context);
                                    })),
                              ),
                            ],
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 20)),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Cashout',
                              style: TextStyle(
                                  inherit: false,
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            GestureDetector(
                              child: const Text(
                                'Semua',
                                style: TextStyle(
                                    inherit: false,
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800),
                              ),
                              onTap: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ListRekomCashout()),
                                    (route) => false);
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 197,
                          child: Row(
                            children: [
                              Expanded(
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: listAllcashout?.length,
                                    itemBuilder: ((context, index) {
                                      return productall(
                                          id: listAllcashout![index].id!,
                                          typeProduct: listAllcashout[index]
                                              .typeProduct
                                              .toString(),
                                          providerName: listAllcashout[index]
                                              .providerName
                                              .toString(),
                                          productName: listAllcashout[index]
                                              .productName
                                              .toString(),
                                          nominal: listAllcashout[index].nominal!,
                                          point: listAllcashout[index].point!,
                                          image: 'assets/logo/cashout.svg',
                                          context: context);
                                    })),
                              ),
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('E-Money'),
                            GestureDetector(
                              child: Text('Semua'),
                              onTap: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ListRekomEmoney()),
                                    (route) => false);
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 197,
                          child: Row(
                            children: [
                              Expanded(
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: listAllemoney?.length,
                                  itemBuilder: ((context, index) {
                                    return productall(
                                        id: listAllemoney![index].id!,
                                        typeProduct: listAllemoney[index]
                                            .typeProduct
                                            .toString(),
                                        providerName: listAllemoney[index]
                                            .providerName
                                            .toString(),
                                        productName: listAllemoney[index]
                                            .productName
                                            .toString(),
                                        nominal: listAllemoney[index].nominal!,
                                        point: listAllemoney[index].point!,
                                        image: 'assets/logo/emoney.svg',
                                        context: context);
                                  }),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
