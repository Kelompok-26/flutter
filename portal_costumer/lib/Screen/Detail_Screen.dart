// ignore_for_file: file_names, prefer_const_constructors, duplicate_ignore
import 'package:flutter/material.dart';
import 'package:portal_costumer/Model/Detail_model.dart';
import 'package:portal_costumer/Model/Navbar_model.dart';
class DetailScreen extends StatefulWidget {
 const DetailScreen({ Key? key,  
  required this.image , required this.point, required this.typeProduct,
   required this.productName, required this.providerName}) : super(key: key);
final String image;
final int point;
final String providerName;
final String typeProduct;
final String productName;
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
          detail :'${widget.typeProduct} ${widget.productName} merupakan salah satu penawaran untuk kamu dapat tukarkan dengan poin yang kamu milliki. Klik konfirmasi untuk mengisi form penukaran ${widget.productName}ini.',
          syarat : 'Pengguna C-Loyal dapat menukarkan poin maksimal 2 kali dalam 7 hari Pastikan penawaran yang kamu pilih sesuai dengan apa yang ingin kamu tukar Cek kembali detail untuk informasi yang lebih lengkap Isi form untuk melakukan penukaran karena penawaran ini akan menyesuaikan operator yang anda gunakan Jika sudah yakin, konfirmasi halaman ini untuk ke tahap selanjutnya',
          point: widget.point,
          benefit: widget.typeProduct + widget.productName,
          image : widget.image,
          providerName: widget.providerName,
        ),
      
    );
  }
}
