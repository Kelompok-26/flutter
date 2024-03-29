// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portal_costumer/Model/API/api_model.dart';
import 'package:portal_costumer/Model/Widget/Navbar_model.dart';
import 'package:provider/provider.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  APIModel? apimodel;
 
  @override
  void initState() {
    APIModel apimodel = Provider.of<APIModel>(context, listen: false);
    //mengambil api Product
    apimodel.getHistory(
      id: apimodel.loginmodel?.userId,
      token: apimodel.loginmodel?.user.toString(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final apimodel = Provider.of<APIModel>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => itemNav()),
                (route) => false);
          },
        ),
        backgroundColor: Color(0xFF145374),
        title: const Text(
          'Riwayat Penggunaan',
        ),
        toolbarHeight: 60,      
      ),
      body: ListView.separated(
        padding: EdgeInsets.only(top: 15),
        scrollDirection: Axis.vertical,
        itemBuilder: (ctx, i) {
          return ListTile(
            title: Text('${apimodel.HistoryModel?.data?[i].createdAt}'),
            subtitle: Text(
              'Penukaran Product ${apimodel.HistoryModel?.data?[i].product?.typeProduct} , ${apimodel.HistoryModel?.data?[i].product?.providerName} , ${apimodel.HistoryModel?.data?[i].product?.productName}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Text(
              'Point - ${apimodel.HistoryModel?.data?[i].product?.point}',
            ),
          );
        },
        separatorBuilder: (ctx, i) {
          return Divider();
        },
        itemCount: apimodel.HistoryModel!.data!.length,
      ),
    );
  }
}
