// ignore_for_file: file_names, prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portal_costumer/Model/API/api_model.dart';
import 'package:portal_costumer/Screen/Detail_Screen.dart';
class RekomendasiPaket extends StatefulWidget {
   RekomendasiPaket({ 
    Key? key,
 required this.paket , required this.point
  }) : super(key: key);
 
  final String paket  ;
  final int point ; 

  @override
  State<RekomendasiPaket> createState() => _RekomendasiPaketState();
}

class _RekomendasiPaketState extends State<RekomendasiPaket> {

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: GestureDetector(
        onTap:(){ Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>DetailScreen() ), (route) => false);
        },
        child: Container(
          decoration : BoxDecoration(
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
                     Container(
                       height: 50,
                       width: 150,
                       child: SvgPicture.asset('assets/logo/paket.svg', fit: BoxFit.contain,)),
                      SizedBox(height: 4,)
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children:[
                     Text('${widget.paket}'),
                   ],
                 ),
                 SizedBox(height: 5,),
                   Text('Point ${widget.point}')
               ],
             ),
         
             
            
        ),
      ),
    );
  }
}