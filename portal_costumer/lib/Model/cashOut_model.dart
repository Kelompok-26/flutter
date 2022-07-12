// ignore_for_file: file_names, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portal_costumer/Screen/Detail_Screen.dart';
Widget cashOut({
  required String? typeProduct ,required String? image,
  required int? nominal, required BuildContext context }) {
 return Card(
      elevation: 3,        
      child: GestureDetector(
        onTap:(){ 
          // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => DetailScreen(image: image.toString(),) ), (route) => false);
        },
        child: Container(    
          decoration : const BoxDecoration(
            border: null,
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
          ),
          height: 150,
          width: 150,
           child :
             Column(
                 mainAxisAlignment : MainAxisAlignment.center,
                  crossAxisAlignment :CrossAxisAlignment.center,
               children: [
                 Column(
                   mainAxisAlignment : MainAxisAlignment.center,
                  crossAxisAlignment :CrossAxisAlignment.center,
                   children: [ 
                     SizedBox(
                       height: 50,
                       width: 150,
                       child: SvgPicture.asset(image.toString(), fit: BoxFit.contain,)),
                      const SizedBox(height: 4,)
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children:[
                     Text(typeProduct.toString()),
                   ],
                 ),
                 const SizedBox(height: 5,),
                   Text('Harga Rp.$nominal')
               ],
             ),            
        ),
      ),
    );
}