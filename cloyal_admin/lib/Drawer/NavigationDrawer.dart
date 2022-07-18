import 'package:cloyal_admin/Screen/HistoryScreen.dart';
import 'package:cloyal_admin/Screen/HomeScreen.dart';
import 'package:cloyal_admin/Screen/PoinScreen.dart';
import 'package:cloyal_admin/Screen/ScreenPulsa.dart';
import 'package:cloyal_admin/Screen/StockScreen.dart';
import 'package:cloyal_admin/Screen/UserScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) => Container(
        color: Color.fromARGB(255, 12, 72, 121),
        width: double.infinity,
        height: 200,
        // padding: EdgeInsets.only(top: 20.0),
        padding: EdgeInsets.only(
          top: 24 + MediaQuery.of(context).padding.top,
          bottom: 24,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/profil.png'),
                ),
              ),
            ),
            Text(
              'Brooklyn Simmons',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Text(
              'Brooklyn Simmons@gmail.com',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 16,
          children: [
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('User'),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => UserScreen(),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.copyright_outlined),
              title: const Text('Poin'),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PoinScreen(),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.signal_cellular_alt),
              title: const Text('Stock'),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => StockScreen(),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('History'),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => HistoryScreen(),
                ),
              ),
            ),
          ],
        ),
      );
}
