// ignore_for_file: file_names, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portal_costumer/Screen/Detail_Screen.dart';
Widget ListRekom({
  required String? typeProduct ,required int?point, required String? img ,
  required String? productName, required String?  providerName,
  required BuildContext context }) {
 return Card(
      elevation: 3,
      child: GestureDetector(
         onTap : (){
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>DetailScreen(
            providerName: providerName.toString(),image: img.toString(),point:int.parse(point.toString()), typeProduct: typeProduct.toString(),productName: productName.toString(),) ), (route) => false);
        },
        child: Container(
          decoration : BoxDecoration(
            border: null,
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
          ),
          height: 130,
          width: 400,
           child :
             Column(
                 mainAxisAlignment : MainAxisAlignment.start,
                  crossAxisAlignment :CrossAxisAlignment.start,
               children: [
              SizedBox
                 (
                 height: 60, 
                 width: 400,
                  child: SvgPicture.asset(img.toString() ,fit: BoxFit.contain,)),
                 SizedBox(height: 2,),
                Text(typeProduct.toString()),
                 Text(productName.toString()),
                 Text('Point $point')
               ],
             ),
         
             
            
        ),
      ),
    );
}



