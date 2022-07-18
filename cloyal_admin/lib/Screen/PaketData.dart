import 'package:cloyal_admin/Drawer/NavigationDrawer.dart';
import 'package:cloyal_admin/Screen/HistoryScreen.dart';
import 'package:flutter/material.dart';

class PaketData extends StatefulWidget {
  PaketData({Key? key}) : super(key: key);

  @override
  State<PaketData> createState() => _PaketDataState();
}

class _PaketDataState extends State<PaketData> {
  final controller = TextEditingController();

  List provider = [
    'TSEL-10K',
    'TSEL-10K',
    'TSEL-10K',
    'TSEL-10K',
    'TSEL-10K',
    'TSEL-10K',
    'TSEL-10K',
    'TSEL-10K'
  ];
  List harga = [
    'Rp 11.000',
    'Rp 11.000',
    'Rp 11.000',
    'Rp 11.000',
    'Rp 11.000',
    'Rp 11.000',
    'Rp 11.000',
    'Rp 11.000'
  ];
  List stok = [
    'Stok',
    'Stok',
    'Stok',
    'Stok',
    'Stok',
    'Stok',
    'Stok',
    'Stok',
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
              'Pulsa',
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
                      hintText: 'Cari Pulsa',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  label: Text('Tambah'),
                  icon: Icon(Icons.add),
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
                                      provider[index],
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      harga[index],
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
                                      stok[index],
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
