import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portal_costumer/Model/API/api_model.dart';
import 'package:portal_costumer/Screen/Login_Screen.dart';
import 'package:provider/provider.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
          SvgPicture.asset('assets/logo/iconsplash.svg', width:210, height:228,),
            Material(
           elevation: 5,
          borderRadius: BorderRadius.circular(10),
           color: const Color.fromARGB(255, 158, 188, 250),
           child: MaterialButton(
          padding:const EdgeInsets.fromLTRB(20, 15, 20, 15) ,
          onPressed: (){
              Navigator.of(context).push(
                  PageRouteBuilder(
                   pageBuilder: (context, animation, secondaryAnimation) => const loginScreen(),
                   transitionsBuilder: (context, animation, secondaryAnimation, child) {
                   const begin = Offset(0.0, 1.0);
                   const end = Offset.zero;
                   const curve = Curves.ease;
                   var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                  return SlideTransition(
                         position: animation.drive(tween),
                          child: child,
                                        );
                                    }
                                  ));
           },
           child: const Text('Mulai', 
          textAlign: TextAlign.center,
          style: TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.bold),),  
      ),
   ),
      ],
    );
    
  }
}
 