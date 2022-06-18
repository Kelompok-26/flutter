import 'package:flutter/material.dart';
import 'package:portal_costumer/Model/Navbar_model.dart';
import 'package:portal_costumer/Screen/Detail_Screen.dart';
import 'package:portal_costumer/Screen/Home_Screen.dart';
import 'package:portal_costumer/Screen/Registration_Screen.dart';
import 'package:portal_costumer/Screen/Login_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: itemNav(),
    );
  }
}


