// ignore_for_file: file_names, prefer_const_constructors_in_immutables
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:portal_costumer/Model/API/api_model.dart';
import 'package:portal_costumer/Screen/Detail_Screen.dart';
class RekomendasiPulsa extends StatefulWidget {
   RekomendasiPulsa( { 
    Key? key,
    required this.typeProduct , required this.providerName,required this.productName,
    required this.nominal,
  }) : super(key: key);
  String typeProduct;
  String providerName;
  String productName;
  int nominal ; 

  @override
  State<RekomendasiPulsa> createState() => _RekomendasiPulsaState();
}

class _RekomendasiPulsaState extends State<RekomendasiPulsa> {

  

  @override
  Widget build(BuildContext context) {
    APIModel apiModel = Provider.of<APIModel>(context,listen : false); 
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
                       child: Image.asset('assets/logo/logo.jpg', fit: BoxFit.contain,)),
                      const SizedBox(height: 4,)
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children:[
                     Text('${widget.typeProduct}'),
                   ],
                 ),
                 const SizedBox(height: 5,),
                   Text('Point ${widget.providerName}'),
                     const SizedBox(height: 5,),
                   Text('Point ${widget.productName}'),
                     const SizedBox(height: 5,),
                   Text('Point ${widget.nominal}')
               ],
             ),
         
             
            
        ),
      ),
    );
  }
}