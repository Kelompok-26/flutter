// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:portal_costumer/Model/API/api_model.dart';
import 'package:portal_costumer/Model/ModelClass/editProfile_view_model.dart';
import 'package:portal_costumer/Model/Navbar_model.dart';
import 'package:portal_costumer/Model/ListRekom_model.dart';
import 'package:provider/provider.dart';
class listRekom extends StatefulWidget {
  const listRekom({ Key? key }) : super(key: key);

  @override
  State<listRekom> createState() => _listRekomState();
}
 
class _listRekomState extends State<listRekom> {
 APIModel? apimodel;
  @override
  void initState() {
     APIModel apimodel = Provider.of<APIModel>(context, listen: false);
     //mengambil api Product
     apimodel.getProduckAllModel();
     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {   
      APIModel apimodel = Provider.of<APIModel>(context, listen: false);
     //mengambil api UserAccount
    final editProfileModel =  Provider.of<editProfile>(context, listen: false);
    final id = editProfileModel.id;
    final token = editProfileModel.token;

     apimodel.getUserAcccount(id:id , token: token );});
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
     final apimodel = Provider.of<APIModel>(context);
   final listAllProduct = apimodel.produckmodel?.data;
     final listAllpulsa= listAllProduct?.
        where((element) => element.typeProduct == 'Pulsa',).toList();
    return Scaffold(
        appBar: AppBar( 
          backgroundColor : Colors.white,
          title: const Text('Rekomendasi',style: TextStyle(color:Colors.black),),
          centerTitle: true,
            leading: IconButton(
            icon: const Icon(Icons.arrow_back, 
             color: Colors.black,
          ),
          onPressed: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>itemNav() ), (route) => false);
          },
        ),
        ),
        body: Column(
           children :[
            const Padding(padding: EdgeInsets.only(top : 10)),
             Card(
              elevation: 10,
               child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    height: 120,
                    width: 400,
                    color: Colors.blue,
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Point Anda Saat ini',
                      style: TextStyle(
                        fontWeight: FontWeight.w200 , 
                        color: Colors.white , 
                        fontSize: 15),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                      Text('${apimodel.useraccount?.data?.point}',
                      style: TextStyle(
                        fontWeight: FontWeight.w800 , 
                        color: Colors.white , 
                        fontSize: 15),),
                        SizedBox(width: 5,),
                      Text('Point',
                      style: TextStyle(
                        fontWeight: FontWeight.w800 , 
                        color: Colors.white , 
                        fontSize: 15),)

                  ],),
                  const SizedBox(height: 5,),
                  Center(
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width : 150,
                          color: Colors.grey,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.menu_book_outlined),
                              SizedBox(width: 10,),
                              Text('Riwayat Point')
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
               ),
              ),
             ),
           Container(
                  height: 7, 
                  color: Colors.grey[300],),
          const Padding(padding: EdgeInsets.only(top : 10)),
          const Text('Menampilkan Rekomendasi Pulsa'), 
          const Padding(padding: EdgeInsets.only(top : 10)),
          Expanded(
            child:ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: listAllpulsa?.length,
            itemBuilder: ( (context, index) {
            return ListRekom(
              providerName: '',
            typeProduct : listAllpulsa?[index].typeProduct,
             productName: listAllpulsa?[index].productName,
             point: listAllpulsa?[index].point,
            img : 'assets/logo/pulsa.svg',
              context: context);
             })
           ),
          )
        ]) 
          

    );
  }
}