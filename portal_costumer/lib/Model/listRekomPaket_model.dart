// ignore_for_file: file_names, unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portal_costumer/Screen/Detail_Screen.dart';
class ListRekomPaket extends StatefulWidget {
   const ListRekomPaket({ 
    Key? key,
    required this.img, required this.paket , required this.point
  }) : super(key: key);
  final String img;
  final String paket  ;
  final int point ; 

  @override
  State<ListRekomPaket> createState() => _ListRekomPaketState();
}

class _ListRekomPaketState extends State<ListRekomPaket> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: GestureDetector(
        onTap : (){
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => DetailScreen(image: widget.img,) ), (route) => false);
        }, 
        child: Container(
          decoration : const BoxDecoration(
            border: null,
            borderRadius: BorderRadius.all(const Radius.circular(40.0)),
          ),
          height: 100,
          width: double.infinity,
           child :
             Column(
                 mainAxisAlignment : MainAxisAlignment.start,
                  crossAxisAlignment :CrossAxisAlignment.start,
               children: [
                 SizedBox
                 (
                 height: 60, 
                 width: 400,
                  child: SvgPicture.asset(widget.img ,fit: BoxFit.contain,)),
                 const SizedBox(height: 2,),
                 Text(widget.paket),
                 Text('Point ${widget.point}')
               ],
             ),
         
             
            
        ),
      ),
    );
  }
}