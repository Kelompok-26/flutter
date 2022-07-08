import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portal_costumer/Screen/Home_Screen.dart';
import 'package:portal_costumer/Model/Navbar_model.dart';
class InformasiScreen extends StatelessWidget {
  const InformasiScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:  Text('Cara Penggunaan', style: TextStyle(
                  inherit : false,
                  color : Colors.black,
                  fontSize: 15,
                   fontWeight : FontWeight.w600,),),
      centerTitle: true,
      leading: IconButton(
          icon: Icon(Icons.arrow_back, 
          color: Color.fromARGB(255, 66, 179, 235),
          ),
          onPressed: (){
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>itemNav() ), (route) => false);
          },
        ),
      ) ,
      body : Column(
        children: [
          Container(
            width : double.infinity,
            height : 80,
            child: SvgPicture.asset('assets/logo/taginformasi.svg'),
          ),
          Container(
            height: 7,
            color: Colors.grey.shade300,
          ),
         Padding(padding: EdgeInsets.only(top: 10)),
          Text('Cara menggunakan poin C-Loyal', style: TextStyle(
            fontSize:20 ,
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),),
          Padding(padding: EdgeInsets.only(top: 35)),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children :[ 
                   Container(
            width : double.infinity,
            height : 55,
            child: SvgPicture.asset('assets/logo/informasi.svg'),
          ),
                Column(
                crossAxisAlignment : CrossAxisAlignment.start ,
                children: [
                  Padding(padding: EdgeInsets.only(top: 35)),
                  Card(
                    margin: EdgeInsets.only(right : 8.0, left: 8.0),
                       color: Color.fromARGB(97, 150, 150, 150),
                    elevation : 10,
                     shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                    child: Container(
                      height:  200,
                      width: double.infinity,
                      child: Column(
                         
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.only(top:20)),
                          Text('1. Sudah memiliki akun C-Loyal ', style : TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
                            Text('2. Pastikan Anda memiliki sejumlah poin', style : TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
                          SizedBox(height: 2,),
                          Text('3. Cari penawaran yang diinginkan', style : TextStyle(fontSize: 15, fontWeight: FontWeight.w700)), 
                           Text('4. Pilih penawaran yang sudah', style : TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
                            Text('Anda cari sebelumnya ', style : TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
                            Text('5. Konfirmasi untuk melakukan penukaran', style : TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),  
                            Text('poin ke penawaran yang Anda pilih ', style : TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),  
                            Text('6. Penukaran berhasil dilakukan ', style : TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),  
                        ],
                      ),
                    ),
                  ),  
                  Padding(padding: EdgeInsets.only(top:10)),
                ],      
                    ),
             Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                elevation: 5,
                color: Colors.blue,
                child: MaterialButton(
                   padding:const EdgeInsets.fromLTRB(20, 15, 20, 15) ,
                   onPressed: (){
                   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>itemNav() ), (route) => false);
                },
                child: const Text('OK, Mengerti', 
                   textAlign: TextAlign.center,
                   style: TextStyle(
                   fontSize: 15,
                   color: Colors.white,
                   fontWeight: FontWeight.w800),),  
                 ),
                  )
              ],
             )
            ]),
          ),
        ],
      ),
    );
  }
}