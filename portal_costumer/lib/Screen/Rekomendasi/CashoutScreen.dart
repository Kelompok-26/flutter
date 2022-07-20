// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:portal_costumer/Model/API/api_model.dart';
import 'package:portal_costumer/Model/Widget/ListRekom_model.dart';
import 'package:portal_costumer/Model/ModelClass/editProfile_view_model.dart';
import 'package:portal_costumer/Model/Widget/Navbar_model.dart';
import 'package:provider/provider.dart';
class ListRekomCashout extends StatefulWidget {
  const ListRekomCashout({ Key? key }) : super(key: key);

  @override
  State<ListRekomCashout> createState() => _ListRekomCashoutState();
}

class _ListRekomCashoutState extends State<ListRekomCashout> {
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
   final listAllcashout= listAllProduct?.
        where((element) => element.typeProduct == 'Cashout',).toList();
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
             Container(
                height: 100,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Color(0xFFF6F5F5),
                  elevation: 1,
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      const Icon(
                        Icons.point_of_sale, size: 35,
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Point Anda Saat ini',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF00334E),
                              fontSize: 15,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '${apimodel.useraccount?.data?.point}',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF00334E),
                                    fontSize: 15),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Poin',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF00334E),
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ),
           Container(
                  height: 7, 
                  color: Colors.grey[300],),
          const Padding(padding: EdgeInsets.only(top : 10)),
          const Text('Menampilkan Rekomendasi Cashout'), 
          const Padding(padding: EdgeInsets.only(top : 10)),
          Expanded(
            child:ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: listAllcashout?.length,
            itemBuilder: ( (context, index) {
            return ListRekom(
                id:  listAllcashout![index].id!,
                typeProduct : listAllcashout[index].typeProduct.toString(),
                providerName :listAllcashout[index].providerName.toString(),
                productName : listAllcashout[index].productName.toString(), 
                 point: listAllcashout[index].point!,
                 img : 'assets/logo/cashout.svg',
                 context: context);          })
           ),
          )
        ]) 
          

    );
  }
}