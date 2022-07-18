import 'package:cloyal_admin/Screen/CobaScreen.dart';
import 'package:cloyal_admin/Screen/Edit/EditUser.dart';
import 'package:cloyal_admin/Screen/HistoryScreen.dart';
import 'package:cloyal_admin/Screen/HomeScreen.dart';
import 'package:cloyal_admin/Screen/PoinScreen.dart';
import 'package:cloyal_admin/Screen/ScreenPulsa.dart';
import 'package:cloyal_admin/Screen/UserScreen.dart';
import 'package:cloyal_admin/pages/login_pages.dart';
import 'package:cloyal_admin/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './Model/ApiModel/ApiModel.dart' as api_store;

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => api_store.APIModel(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPages(),
    );
  }
}
