// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portal_costumer/Screen/Poin/TukarPoinScreen.dart';

class Detail_model extends StatefulWidget {
  const Detail_model({
    Key? key,
    required this.id,
    required this.image, required this.benefit, required this.point, required this.providerName,required this.detail, required this.syarat,
  }) : super(key: key);
  final int id;
  final String image;
  final String benefit;
  final int point;
  final String providerName;
  final String  detail;
  final String syarat;

  @override
  State<Detail_model> createState() => _Detail_modelState();
}

class _Detail_modelState extends State<Detail_model> {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          width: 700,
          child: SvgPicture.asset(widget.image, fit: BoxFit.cover,),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Card(
              elevation: 10,
              child: Container(
                decoration : const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft : Radius.circular(20),topRight : Radius.circular(20)),
                ),
              child : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(padding: EdgeInsets.only(top: 25)),
                  Text(widget.benefit),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Point'),
                      Text('${widget.point} Point')
                    ],),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Merupakan Product :'),
                      Text(widget.providerName)
                    ],),
                const Padding(padding: EdgeInsets.only(top: 10)),
                Container(
                  height: 7,
                  color: Colors.grey[300],
              ),
              const SizedBox(height: 20,),
              const Text('Detail'),
              Text(widget.detail),
              const SizedBox(height: 20,),
              const Text('Syarat & Ketentuan'),
              Text(widget.syarat)
                ],)
              ),
            ),
          )),
          Container(
            height: 7,
            color: Colors.grey[300],
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          Material(
           elevation: 5,
           color: const Color.fromARGB(255, 158, 188, 250),
           child: MaterialButton(
          padding:const EdgeInsets.fromLTRB(20, 15, 20, 15) ,
          onPressed: (){
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => TukarPointScreen(
            id : widget.id,
            image: widget.image, providerName: widget.providerName,) ), (route) => false);
           },
           child: const Text('Konfirmasi Tukar Point', 
          textAlign: TextAlign.center,
          style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold),),  
      ),
   )],
    );
  }
}