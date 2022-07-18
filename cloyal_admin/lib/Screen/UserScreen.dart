import 'package:cloyal_admin/Drawer/NavigationDrawer.dart';
import 'package:cloyal_admin/Model/ProdukModel.dart';
import 'package:cloyal_admin/Screen/Edit/EditUser.dart';
import 'package:cloyal_admin/Screen/HistoryScreen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:dio/dio.dart';

class UserScreen extends StatefulWidget {
  UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final controller = TextEditingController();

  List name = [
    'Wade Warren',
    'Wade Warren',
    'Wade Warren',
    'Wade Warren',
    'Wade Warren',
    'Wade Warren',
    'Wade Warren',
    'Wade Warren'
  ];
  List id = [
    '111222333444',
    '111222333444',
    '111222333444',
    '111222333444',
    '111222333444',
    '111222333444',
    '111222333444',
    '111222333444'
  ];
  List alamat = [
    'Jakarta',
    'Palembang',
    'Bandung',
    'Surabaya',
    'Denpasar',
    'Makassar',
    'Medan',
    'Yogyakarta',
  ];

  final GlobalKey<RefreshIndicatorState> _refresh = GlobalKey<RefreshIndicatorState>();

  var loading = false;
//   final list =  <ProdukModel>[];
//   Future<dynamic> 
//   _lihatData() async {
//     list.clear();
//     setState(() {
//       loading = true;
//     });
//     final response = await _dio.get(
//       'http/ec2-54-160-45-255.compute-1.amazonaws.com:8080/v1/users',
//       data: {
//             "id": 1,
//             "name": "astaga alta123",
//             "email": "nagamerah12@gmail.com",
//             "phone_number": "01813181185",
//             "password": "$2a$10$uYoTUNefkuVRMH1Y3TA2.eaMs1xs9CC90.Dqx2AXDvJSCG0wJPqn.",
//             "date_of_birth": "2001-11-01",
//             "gender": "female",
//             "point": 0,
//             "account_number": "3912389"
//         },
// );
//     if (response.contentLength == 2) {

//     } else {
//       final data = jsonDecode(response.body);
//       data.forEach(api) {
//         final ab = new ProdukModel{
//           api['profil'];
//           api['name'];
//           api['id'];
//           api['alamat'];
          
//           list.add(ab);
//         }      
//     };
//     setState(() {
//       loading = false;
//     });
//   }
//   @override
//   void initState() {
//     super.initState();
//     _lihatData();
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
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
              'User',
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
                // RefreshIndicator(
                //   // onRefresh: _lihatData,
                //   key: _refresh,
                //   child: loading
                //     ? Center(child: CircularProgressIndicator(),)
                //   : ListView.builder(
                //     // itemCount: list.length,
                //     // shrinkWrap: true,
                //     itemBuilder: (context,index) {
                //     // final x = list[index]; 
                //     return Container(                      
                //       width: MediaQuery.of(context).size.width,
                //       padding: const EdgeInsets.symmetric(
                //           horizontal: 8.0, vertical: 5.0),
                //       child: Card(
                //         elevation: 1.0,
                //         shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(15.0),
                //         ),
                //         child: Container(
                //           width: MediaQuery.of(context).size.width,
                //           padding: const EdgeInsets.symmetric(
                //               horizontal: 10.0, vertical: 18.0),
                //           child: Row(
                //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //             crossAxisAlignment: CrossAxisAlignment.center,
                //             children: [
                //               Row(
                //                 crossAxisAlignment: CrossAxisAlignment.center,
                //                 children: [
                //                     CircleAvatar(
                //                       child: Text(name[index][0], 
                //                       style: TextStyle(fontSize: 12),
                //                       ),
                //                     ),
                //                   const SizedBox(
                //                     width: 8,
                //                   ),
                //                   Column(
                //                     crossAxisAlignment: CrossAxisAlignment.center,
                //                     children: [
                //                       // Text(
                //                       //   x.name,
                //                       //   // names[index],
                //                       //   style: const TextStyle(
                //                       //       color: Colors.black,
                //                       //       fontSize: 16.0,
                //                       //       fontWeight: FontWeight.bold),
                //                       // ),
                //                       // Text(
                //                       //   x.id, style:
                //                       //       const TextStyle(color: Colors.grey),
                //                       // ),
                //                         // number[index],
                                        
                //                     ],
                //                   ),
                //                   const SizedBox(
                //                     width: 30,
                //                   ),
                //                   Column(
                //                     crossAxisAlignment: CrossAxisAlignment.center,
                //                     children: [
                //                       // Text(
                //                       //   x.alamat,
                //                       //   // domisili[index],
                //                       //   style: const TextStyle(
                //                       //       color: Colors.black,
                //                       //       fontSize: 16.0,
                //                       //       fontWeight: FontWeight.normal),
                //                       // ),
                //                     ],
                //                   ),
                //                 ],
                //               ),
                //               Row(
                //                 // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //                 children: [
                //                   IconButton(
                //                     onPressed: () {
                //                       // Navigator.of(context).push(
                //                       //   MaterialPageRoute(
                //                       //     builder: (context) => EditUser(x, _lihatData),
                //                       //   ),
                //                       // );
                //                     },
                //                     icon: Icon(Icons.edit),
                //                   ),
                //                   IconButton(
                //                     onPressed: () {},
                //                     icon: Icon(Icons.delete),
                //                   ),
                //                 ],
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //     );
                //   },
                //  ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
 }
