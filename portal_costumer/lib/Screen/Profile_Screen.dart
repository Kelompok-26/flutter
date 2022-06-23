// ignore_for_file: file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Column( 
      children: [
        Container(
           height : 150,
           color: const Color.fromARGB(255, 54, 36, 255),
           child :  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar( backgroundImage: AssetImage('assets/logo/logo.jpg'),
                                   radius : 30.0,),
                   Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const SizedBox(height: 55,),
                      const Text('Indah Cahya', style: TextStyle(
                    fontSize: 15, 
                    fontWeight: FontWeight.w500, 
                    color: Colors.white)),
                      const Text('081231414421', style: TextStyle(
                    fontSize: 15, 
                    fontWeight: FontWeight.w500, 
                    color: Colors.white))
                    ],
                   ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.28,),
                   const CircleAvatar( backgroundImage: AssetImage('assets/logo/edit.png'),
                                   radius : 20.0,),
                   
                ],
              ),
        ),
         Container(
          height : 10, 
          color: Colors.grey[300]),
        Expanded(child: Column(
          children: [
            Card(
              elevation: 10,
              child: Container(
                height: 200,
                width: 360,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                ),
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(Icons.star_border_outlined, size: 35,),
                        const Text('Beri Penilaian',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                           SizedBox(width: MediaQuery.of(context).size.width * 0.34,),
                        const Icon(Icons.arrow_right_sharp,size: 40),
                      ],
                    ),
                     const Padding(padding: EdgeInsets.only(top: 20)),
                       Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(Icons.lock_outline,size: 35,),
                        const Text('Ubah Password',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                           SizedBox(width: MediaQuery.of(context).size.width * 0.3,),
                        const Icon(Icons.arrow_right_sharp,size: 40),
                      ],
                    ),
                     const Padding(padding: EdgeInsets.only(top: 20)),
                       Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(Icons.notifications, size: 35,),
                        const Text('Notifikasi',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                           SizedBox(width: MediaQuery.of(context).size.width * 0.44,),
                        const Icon(Icons.arrow_right_sharp,size: 40),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
                height: 20,
                color: Colors.grey[300],
            ),
           Card(
              elevation: 10,
              child: Container(
                height: 200,
                width: 360,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                ),
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(Icons.headphones_outlined, size: 35,),
                        const Text('Pusat Bantuan',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                           SizedBox(width: MediaQuery.of(context).size.width * 0.34,),
                        const Icon(Icons.arrow_right_sharp,size: 40),
                      ],
                    ),
                     const Padding(padding: EdgeInsets.only(top: 20)),
                       Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(Icons.menu_book_outlined,size: 35,),
                        const Text('Syarat dan Ketentuan',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                           SizedBox(width: MediaQuery.of(context).size.width * 0.2,),
                        const Icon(Icons.arrow_right_sharp,size: 40),
                      ],
                    ),
                     const Padding(padding: EdgeInsets.only(top: 20)),
                       Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(Icons.privacy_tip_outlined, size: 35,),
                        const Text('Kebijakan Privasi',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                           SizedBox(width: MediaQuery.of(context).size.width * 0.3,),
                        const Icon(Icons.arrow_right_sharp,size: 40),
                      ],
                    )
                  ],
                ),
              ),
            ),
           Container(
                height: 30,
                color: Colors.grey[300],
            ),

            Card( 
              elevation: 10,
              child: Container(
                 height: 50,
                child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(Icons.login_outlined,size: 35,),
                        const Text('Keluar',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                           SizedBox(width: MediaQuery.of(context).size.width * 0.47,),
                        const Icon(Icons.arrow_right_sharp,size: 40),
                      ],
                    ),
              ),
            )
          ],
        ))
      ],
      
    );
  }
}