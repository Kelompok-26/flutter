import 'package:flutter/material.dart';
import 'package:portal_costumer/Screen/Detail_Screen.dart';
class RekomendasiPaket extends StatelessWidget {
   RekomendasiPaket({ 
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
                       child: Image.asset('$img', fit: BoxFit.contain,)),
                      SizedBox(height: 4,)
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children:[
                     Text('$paket'),
                   ],
                 ),
                 SizedBox(height: 5,),
                   Text('Point $point')
               ],
             ),
         
             
            
        ),
      ),
    );
  }
}