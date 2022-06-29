import 'package:flutter/material.dart';
import 'package:portal_costumer/Model/Navbar_model.dart';
import 'package:portal_costumer/Screen/Home_Screen.dart';
import 'package:portal_costumer/Screen/Point_Screen.dart';
import 'package:portal_costumer/Screen/Profile_Screen.dart';
import 'package:portal_costumer/Screen/TukarPoint_Screen.dart';
import 'package:provider/provider.dart';
import './Model/API/api_model.dart' as api_store;

void main() {
  runApp(
    MultiProvider(
      providers: [
    ChangeNotifierProvider(create: (_) => api_store.APIModel(),),
  ],
   child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomeScreen(),
    );
  }
}


