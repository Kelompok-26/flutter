import 'package:flutter/material.dart';

Widget ListPromo({required String image, required String typeProduct, required int stock}) {
  return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 150,
        width: 200,
        color: Colors.orangeAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(typeProduct.toString()),
                Text(stock.toString()),
              ],
            ),
            Image.asset(
              image.toString(),
              width: 110,
              height: 80,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
} 
