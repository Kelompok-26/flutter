// ignore_for_file: file_names, prefer_const_constructors, duplicate_ignore
import 'package:flutter/material.dart';
import 'package:portal_costumer/Model/Detail_model.dart';
import 'package:portal_costumer/Model/Navbar_model.dart';
class DetailScreen extends StatefulWidget {
 const DetailScreen({ Key? key,  
  required this.image }) : super(key: key);
final String image;
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( 
          backgroundColor:Colors.white,
          // ignore: prefer_const_constructors
          title: Text('Rekomendasi',style: TextStyle(color:Colors.black),),
          centerTitle: true,
            leading: IconButton(
            icon: Icon(Icons.arrow_back, 
             color: Colors.black,
          ),
          onPressed: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>itemNav() ), (route) => false);
          },
        ),
        ),
        body: Detail_model(
          detail : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
          syarat : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
          point: 14,
          benefit: 'Pulsa 50RB',
          image : widget.image,
          tanggal: '10 Oktober 2000',
        ),
      
    );
  }
}
