// ignore_for_file: file_names, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portal_costumer/Screen/Rekomendasi/Detail_Screen.dart';
Widget productall({
  required  int id ,required String typeProduct ,required String providerName,required String productName,required int nominal, 
  required int?point, required String? image ,required BuildContext context }) {
 return Card(
      elevation: 3,        
      child: GestureDetector(
        onTap:(){ Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => DetailScreen(
          id: int.parse(id.toString()),
          image: image.toString(),point:int.parse(point.toString()), typeProduct: typeProduct.toString(),productName: productName.toString(),providerName: providerName.toString(),) ), (route) => false);
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
                       height: 85,
                       width: 150,
                       child: SvgPicture.asset(image.toString(), fit: BoxFit.fitWidth,),),
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
                   Text(providerName.toString()),
                     const SizedBox(height: 5,),
                   Text(productName.toString()),
                     const SizedBox(height: 5,),
                   Text('Harga Rp.$nominal'),
                     const SizedBox(height: 5,),
                   Text('Point $point')
               ],
             ),            
        ),
      ),
    );
}