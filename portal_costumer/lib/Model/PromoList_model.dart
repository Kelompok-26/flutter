import 'package:flutter/material.dart';
class ListPromo extends StatelessWidget {
   ListPromo({ 
    Key? key,
    required this.image, required this.title , required this.subtitle
  }) : super(key: key);
  final String image  ;
  final String title;
  final String subtitle ; 

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 100,
        width: 200,
        color : Colors.grey,
         child : Row(
            mainAxisAlignment : MainAxisAlignment.spaceEvenly,
          children: [
           Column(
               mainAxisAlignment : MainAxisAlignment.center,
                crossAxisAlignment :CrossAxisAlignment.center,
             children: [
               Text('$title'),
               Text('$subtitle'),
             ],
           ),
           Image.asset('$image', width: 100, height :40),
           
          ],
        )
      ),
    );
  }
}