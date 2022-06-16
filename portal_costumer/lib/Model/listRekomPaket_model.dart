import 'package:flutter/material.dart';
class ListRekomPaket extends StatelessWidget {
   ListRekomPaket({ 
    Key? key,
    required this.img, required this.paket , required this.point
  }) : super(key: key);
  final String img;
  final String paket  ;
  final int point ; 

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
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
               Column(
                 mainAxisAlignment : MainAxisAlignment.center,
                crossAxisAlignment :CrossAxisAlignment.center,
                 children: [ 
                   Image.asset('$img',width: 400,height: 60,fit: BoxFit.cover,),
                   SizedBox(height: 2,),
                 ],
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children:[
                   Text('$paket'),
                 ],
               ),
                 Text('Point $point')
             ],
           ),
       
           
          
      ),
    );
  }
}