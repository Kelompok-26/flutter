// ignore_for_file: file_names, camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portal_costumer/Screen/History_Screen.dart';
import 'package:portal_costumer/Screen/Home_Screen.dart';
import 'package:portal_costumer/Screen/Point_Screen.dart';
import 'package:portal_costumer/Screen/Profile_Screen.dart';
class itemNav extends StatefulWidget {
   itemNav({
    Key? key
  }) : super(key: key);

  @override
  State<itemNav> createState() => _itemNavState();
}

class _itemNavState extends State<itemNav> {
  int _selectedIndex = 0;
  static const List page = [
    HomeScreen(),
    HistoryScreen(),
    PointScreen(),
    ProfileScreen()

  ];

  void _onItemTapped(int index) {

    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_selectedIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',        
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history,),
            label: 'Riwayat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.paid_outlined,),
            label: 'Poin',
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded,),
            label: 'Profile',
          ),
        ],
        elevation: 10,
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 25, 34, 203),
        onTap: _onItemTapped,
       unselectedItemColor: Colors.black,
      ),
    );
  }
}