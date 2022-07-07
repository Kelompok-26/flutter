// ignore_for_file: file_names, prefer_const_constructors_in_immutables, prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portal_costumer/Screen/Detail_Screen.dart';
class ListRekomPulsa extends StatelessWidget {
   ListRekomPulsa({ 
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
         onTap : (){
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>DetailScreen(image: img,) ), (route) => false);
        },
        child: Container(
          decoration : BoxDecoration(
            border: null,
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
          ),
          height: 100,
          width: 400,
           child :
             Column(
                 mainAxisAlignment : MainAxisAlignment.start,
                  crossAxisAlignment :CrossAxisAlignment.start,
               children: [
              Container
                 (
                 height: 60, 
                 width: 400,
                  child: SvgPicture.asset(img ,fit: BoxFit.contain,)),
                 SizedBox(height: 2,),
                 Text('$pulsa'),
                 Text('Point $point')
               ],
             ),
         
             
            
        ),
      ),
    );
  }
}