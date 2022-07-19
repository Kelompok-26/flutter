// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portal_costumer/Model/API/api_model.dart';
import 'package:portal_costumer/Model/Navbar_model.dart';
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
  List<Tab> myTab = [
    const Tab(
      text: 'Transaksi',
    ),
  ];
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
    return DefaultTabController(
      length: myTab.length,
      child: Scaffold(
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
          backgroundColor: Colors.blueAccent,
          title: const Text(
            'Riwayat',
            textAlign: TextAlign.justify,
          ),
          toolbarHeight: 100,
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            labelStyle: const TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelStyle:
                const TextStyle(fontWeight: FontWeight.normal),
            indicator: BoxDecoration(
              color: Colors.blue[700],
              borderRadius: BorderRadius.circular(50),
            ),
            tabs: myTab,
          ),
        ),
        body: ListView.separated(
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
      ),
    );
  }
}
