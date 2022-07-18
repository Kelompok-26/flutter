import 'package:cloyal_admin/Drawer/NavigationDrawer.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
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
  List poin = ['-10', '-10', '-10', '-10', '-10', '-10', '-10', '-10'];
  List pulsa = [
    'Pulsa 10K',
    'Pulsa 10K',
    'Pulsa 10K',
    'Pulsa 10K',
    'Pulsa 10K',
    'Pulsa 10K',
    'Pulsa 10K',
    'Pulsa 10K',
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
          crossAxisAlignment: CrossAxisAlignment.center,    
          mainAxisAlignment: MainAxisAlignment.spaceBetween,   
          children: [
            // Icon(
            //   Icons.menu,
            //   color: Colors.black,
            // ),
            Text(
              'History',
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
                            horizontal: 2.0, vertical: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  '3/4/16',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      names[index],
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      pulsa[index],
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal),
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
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Sukses'),
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

MyDrawerList() {
}
