import 'package:flutter/material.dart';
class Detail_model extends StatelessWidget {
  const Detail_model({
    Key? key,
    required this.image, required this.benefit, required this.point, required this.tanggal,required this.detail, required this.syarat,
  }) : super(key: key);
  final String image;
  final String benefit;
  final int point;
  final String tanggal;
  final String  detail;
  final String syarat;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 700,
          child: Image.asset('$image', fit: BoxFit.cover,),
        ),
        Expanded(
          child: Card(
            elevation: 10,
            child: Container(
              decoration : BoxDecoration(
                borderRadius: BorderRadius.only(topLeft : Radius.circular(20),topRight : Radius.circular(20)),
              ),
            child : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: 25)),
                Text('$benefit'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Point'),
                    Text('$point Point')
                  ],),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Berlaku Sampai dengan'),
                    Text('$tanggal')
                  ],),
              Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                height: 7,
                color: Colors.grey[300],
            ),
            SizedBox(height: 20,),
            Text('Detail'),
            Text('$detail'),
            SizedBox(height: 20,),
            Text('Syarat & Ketentuan'),
            Text('$syarat')
              ],)
            ),
          )),
          Container(
            height: 7,
            color: Colors.grey[300],
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Material(
           elevation: 5,
           color: Color.fromARGB(255, 158, 188, 250),
           child: MaterialButton(
          padding:EdgeInsets.fromLTRB(20, 15, 20, 15) ,
          onPressed: (){
               // signIn(usernameController.text, passwordController.text);
           },
           child: Text('Konfirmasi Tukar Point', 
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