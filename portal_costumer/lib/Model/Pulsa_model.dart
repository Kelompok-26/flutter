// ignore_for_file: file_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:portal_costumer/Screen/Detail_Screen.dart';
class RekomendasiPulsa extends StatelessWidget {
   RekomendasiPulsa({ 
    Key? key,
    required this.img, required this.pulsa , required this.point
  }) : super(key: key);
  final String img;
  final String pulsa  ;
  final int point ; 

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: GestureDetector(
        onTap:(){ Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const DetailScreen() ), (route) => false);
        },
        child: Container(
          decoration : const BoxDecoration(
            border: null,
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
          ),
          height: 100,
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
                       child: Image.asset(img, fit: BoxFit.contain,)),
                      const SizedBox(height: 4,)
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children:[
                     Text(pulsa),
                   ],
                 ),
                 const SizedBox(height: 5,),
                   Text('Point $point')
               ],
             ),
         
             
            
        ),
      ),
    );
  }
}