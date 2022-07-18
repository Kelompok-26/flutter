import 'package:cloyal_admin/Drawer/NavigationDrawer.dart';
import 'package:cloyal_admin/Screen/HistoryScreen.dart';
import 'package:flutter/material.dart';

class PoinScreen extends StatefulWidget {
  PoinScreen({Key? key}) : super(key: key);

  @override
  State<PoinScreen> createState() => _PoinScreenState();
}

class _PoinScreenState extends State<PoinScreen> {
  final controller = TextEditingController();

  List names = [
    'Wade Warren',
    'Wade Warren',
    'Wade Warren',
    'Wade Warren',
    'Wade Warren',
    'Wade Warren',
    'Wade Warren',
    'Wade Warren'
  ];
  List number = [
    '111222333444',
    '111222333444',
    '111222333444',
    '111222333444',
    '111222333444',
    '111222333444',
    '111222333444',
    '111222333444'
  ];
  List poin = [
    'Poin',
    'Poin',
    'Poin',
    'Poin',
    'Poin',
    'Poin',
    'Poin',
    'Poin',
  ];
  List angka = [
    '30',
    '30',
    '30',
    '30',
    '30',
    '30',
    '30',
    '30',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(        
      ),
      backgroundColor: Color.fromARGB(255, 243, 238, 238),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu,
              color: Colors.black,
            ),
            Text(
              'User Poin',
              style: TextStyle(color: Colors.black),
            ),
            Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ],
        ),
        // centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 220,
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Cari User',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  label: Text('Refresh'),
                  icon: Icon(Icons.refresh),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) => Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 5.0),
                    child: Card(
                      elevation: 1.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      names[index],
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      number[index],
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 120,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      angka[index],
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Text(
                                      poin[index],
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              'Manage',
                              style: const TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
