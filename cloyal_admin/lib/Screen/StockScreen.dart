import 'package:cloyal_admin/Drawer/NavigationDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class StockScreen extends StatefulWidget {
  const StockScreen({Key? key}) : super(key: key);

  @override
  State<StockScreen> createState() => _StockScreenState();
}

class _StockScreenState extends State<StockScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Icon(Icons.people),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '57',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Total pengguna C-Loyal',
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
