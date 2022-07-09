// ignore_for_file: file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:portal_costumer/Screen/KebijakanPrivasi_Screen.dart';
import 'package:portal_costumer/Screen/SyaratdanKetentuan_Screen.dart';
import 'package:portal_costumer/Screen/editProfile.dart';
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
                                   radius : 15.0,),
                   
                ],
              ),
        ),
         Container(
          height : 10, 
          color: Colors.grey[300]),
        Expanded(
          child: 
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
            children: [
              Card(
                elevation: 10,
                child: Container(
                  height: 120,
                  width: 360,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  ),
                  child: Column(
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 20)),
                      GestureDetector(
                        onTap: (){
                           Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>EditProfileScreen() ), (route) => false);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(Icons.account_circle_rounded, size: 24,),
                            const Text('Edit Profil',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                               SizedBox(width: MediaQuery.of(context).size.width * 0.42,),
                            const Icon(Icons.arrow_right_sharp,size: 40),
                          ],
                        ),
                      ),
                       const Padding(padding: EdgeInsets.only(top: 10)),
                         Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(Icons.notifications, size: 24,),
                          const Text('Notifikasi',
                            style: TextStyle(
                              fontSize: 15,
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
                  height: 3,
                  color: Colors.grey[300],
              ),
             Card(
                elevation: 10,
                child: Container(
                  height: 150,
                  width: 360,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  ),
                  child: Column(
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(Icons.question_mark_outlined, size: 24,),
                          const Text('FAQ',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                             SizedBox(width: MediaQuery.of(context).size.width * 0.47,),
                          const Icon(Icons.arrow_right_sharp,size: 40),
                        ],
                      ),
                       const Padding(padding: EdgeInsets.only(top: 10)),
                         GestureDetector(
                          onTap: (){
                             Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>SyaratDanKetentuanScreen() ), (route) => false);
                          },
                           child: Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                 children: [
                            const Icon(Icons.menu_book_outlined,size: 24,),
                            const Text('Syarat dan Ketentuan',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                               SizedBox(width: MediaQuery.of(context).size.width * 0.2,),
                            const Icon(Icons.arrow_right_sharp,size: 40),
                                                 ],
                                               ),
                         ),
                       const Padding(padding: EdgeInsets.only(top: 10)),
                         GestureDetector(
                          onTap: (){ Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>KebijakanPrivasiScreen() ), (route) => false);
                          },
                           child: Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                 children: [
                            const Icon(Icons.privacy_tip_outlined, size: 24,),
                            const Text('Kebijakan Privasi',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                               SizedBox(width: MediaQuery.of(context).size.width * 0.3,),
                            const Icon(Icons.arrow_right_sharp,size: 40),
                                                 ],
                                               ),
                         )
                    ],
                  ),
                ),
              ),
             Container(
                  height: 3,
                  color: Colors.grey[300],
              ),
          
              Card( 
                elevation: 10,
                child: Container(
                   height: 50,
                  child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(Icons.logout_outlined,size: 24, color: Colors.red,),
                          const Text('Keluar',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red
                            ),
                          ),
                             SizedBox(width: MediaQuery.of(context).size.width * 0.4,),
                          const Icon(Icons.arrow_right_sharp,size: 40, color: Colors.red,),
                        ],
                      ),
                ),
              )
          
            ],
                  ),
          ))
      ],
      
    );
  }
}