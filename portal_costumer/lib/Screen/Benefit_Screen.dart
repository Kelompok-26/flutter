// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portal_costumer/Model/Navbar_model.dart';

class BenefitScreen extends StatelessWidget {
  const BenefitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Benefit yang kamu dapatkan',
            style: TextStyle(
              inherit: false,
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 66, 179, 235),
            ),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => itemNav()),
                  (route) => false);
            },
          )),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 80,
            child: SvgPicture.asset('assets/logo/taginformasi.svg'),
          ),
          Container(
            height: 7,
            color: Colors.grey.shade300,
          ),
          Expanded(
            child: ListView(scrollDirection: Axis.vertical, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  Card(
                    margin: const EdgeInsets.only(right: 8.0, left: 8.0),
                    color: const Color.fromARGB(97, 150, 150, 150),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    child: SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Text('Kamu dapat melakukan penukaran poin ',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700)),
                          Text('dengan berbagai macam penawaran',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700)),
                          SizedBox(
                            height: 2,
                          ),
                          Text('Sejak bergabung menjadi member C-Loyal',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  Card(
                    margin: const EdgeInsets.only(right: 8.0, left: 8.0),
                    color: const Color.fromARGB(97, 150, 150, 150),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    child: SizedBox(
                      height: 110,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Padding(padding: EdgeInsets.only(top: 30)),
                          Text('Dapatkan lebih banyak penawaran ',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700)),
                          Text('yang menarik dengan mengumpulkan poin',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700)),
                          Text('yang sebanyak-banyaknya',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  Card(
                    margin: const EdgeInsets.only(right: 8.0, left: 8.0),
                    color: const Color.fromARGB(97, 150, 150, 150),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    child: SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Padding(padding: EdgeInsets.only(top: 10)),
                          Text('Kamu dapat mengumpulkan poin',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700)),
                          Text('melalui pembelian yang dilakukan',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700)),
                          Text(' pada halaman redeem dan dapat kamu tukarkan',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700)),
                          Text('secara langsung pada aplikasi C-Loyal',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  Card(
                    margin: const EdgeInsets.only(right: 8.0, left: 8.0),
                    color: const Color.fromARGB(97, 150, 150, 150),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    child: SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Padding(padding: EdgeInsets.only(top: 25)),
                          Text('C-Loyal poin memberikanmu',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700)),
                          Text('kemudahan untuk melakukan berbagai',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700)),
                          Text('transaksi degan cepat',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    elevation: 5,
                    color: Colors.blue,
                    child: MaterialButton(
                      padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => itemNav()),
                            (route) => false);
                      },
                      child: const Text(
                        'OK, Mengerti',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  )
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
