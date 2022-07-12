// ignore_for_file: file_names, unnecessary_const, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portal_costumer/Screen/Detail_Screen.dart';
class RekomCashOutModel extends StatefulWidget {
    RekomCashOutModel({ 
    Key? key,
    required this.img, required this.typeProduct , required this.nominal
  }) : super(key: key);
  final String img;
  final String typeProduct  ;
  final int nominal ; 

  @override
  State<RekomCashOutModel> createState() => _RekomCashOutModelState();
}

class _RekomCashOutModelState extends State<RekomCashOutModel> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: GestureDetector(
        onTap : (){
          // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => DetailScreen(image: widget.img,) ), (route) => false);
        }, 
        child: Container(
          decoration : const BoxDecoration(
            border: null,
            borderRadius: BorderRadius.all(const Radius.circular(40.0)),
          ),
          height: 100,
          width: 400,
           child :
             Column(
                 mainAxisAlignment : MainAxisAlignment.start,
                  crossAxisAlignment :CrossAxisAlignment.start,
               children: [
                 SizedBox
                 (
                 height: 60, 
                 width: double.infinity,
                  child: SvgPicture.asset(widget.img)),
                 const SizedBox(height: 2,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children:[
                     Text(widget.typeProduct),
                   ],
                 ),
                   Text('Harga Rp.${widget.nominal}')
               ],
             ),
         
             
            
        ),
      ),
    );
  }
}