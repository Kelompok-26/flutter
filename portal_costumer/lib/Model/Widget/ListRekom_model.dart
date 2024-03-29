// ignore_for_file: file_names, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portal_costumer/Screen/Rekomendasi/Detail_Screen.dart';

Widget ListRekom(
    {required int? id,
    required String? typeProduct,
    required int? point,
    required String? img,
    required String? productName,
    required String? providerName,
    required BuildContext context}) {
  return Card(
    elevation: 3,
    child: GestureDetector(
      onTap: () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(
                      id: int.parse(id.toString()),
                      providerName: providerName.toString(),
                      image: img.toString(),
                      point: int.parse(point.toString()),
                      typeProduct: typeProduct.toString(),
                      productName: productName.toString(),
                    )),
            (route) => false);
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
            border: null,
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
          ),
          height: 155,
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: 100,
                  width: 400,
                  child: SvgPicture.asset(
                    img.toString(),
                    fit: BoxFit.fitWidth,
                  )),
              SizedBox(
                height: 7,
              ),
              Text(typeProduct.toString()),
              Text(productName.toString()),
              Text('Point $point')
            ],
          ),
        ),
      ),
    ),
  );
}
