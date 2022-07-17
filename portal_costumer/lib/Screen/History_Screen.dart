// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portal_costumer/Model/History_model.dart';
  
class HistoryScreen extends StatefulWidget {
  const HistoryScreen({ Key? key }) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  List<Tab> myTab = [
    const Tab(
      text: 'Transaksi',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(       
        length: myTab.length, 
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blueAccent,
              title: 
                    const Text('Riwayat',
              textAlign: 
                    TextAlign.justify,
              ),
              toolbarHeight: 100,
              bottom: TabBar(       
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white, 
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.bold
                  ),
                  unselectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.normal
                  ),
                indicator: BoxDecoration(
                  color: Colors.blue[700],
                  borderRadius: BorderRadius.circular(50),
                ),
                tabs: myTab,                                                
                ),
            ),
            body: ListView.separated(
              itemBuilder: (ctx,i){
              return ListTile(                                              
                  title:  Text(items[i].date,
              ),
                  subtitle: Text(items[i].message, 
                  style: TextStyle(fontWeight: FontWeight.bold),
              ),
                  trailing: Text(items[i].cash
              ),
            ); 
        }, separatorBuilder: (ctx,i){
            return Divider();
        }, 
        itemCount: items.length
        ),
      ),
    );
   }                        
}
