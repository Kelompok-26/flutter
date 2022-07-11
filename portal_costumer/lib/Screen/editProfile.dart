// ignore_for_file: file_names, prefer_const_constructors_in_immutables, prefer_const_constructors, duplicate_ignore, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:portal_costumer/Model/Navbar_model.dart';
class EditProfileScreen extends StatefulWidget {
  EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
       appBar : AppBar(
        backgroundColor : Colors.white,
        // ignore: prefer_const_constructors
        title: Text('Edit Profil',
            style: TextStyle(
              fontSize: 20,
                color: Colors.black,
        ),
        ),
        centerTitle : true,
         leading: IconButton(
          icon: Icon(Icons.arrow_back, 
          color: Color.fromARGB(255, 66, 179, 235),
          ),
          onPressed: (){
           Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>itemNav() ), (route) => false);
          },
        ),
       ),
     body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 10)),
          SizedBox(
            height: 150, 
            width: double.infinity,
            child : Column(
              
              crossAxisAlignment : CrossAxisAlignment.center,
              children: const [
                Padding(padding: EdgeInsets.only(top: 5)),
               CircleAvatar( backgroundImage: AssetImage('assets/logo/logo.jpg'),
                                   radius : 30.0,),
               Padding(padding: EdgeInsets.only(top: 5)),
               Text('Nama mu',style: TextStyle( 
                fontSize: 20, 
                fontWeight: FontWeight.w800,
                color: Colors.black,
               ),),
               Text('@indahcahyaa',style: TextStyle( 
                fontSize: 15, 
                color: Colors.black,
               ),),
                 
                 
              ]),
          ),
          Container(
            height: 7,
            color: Colors.grey.shade300,
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Column(
                children: [
               SizedBox(
                 height: 70,
                 width: 320,
                 child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                    Text('Email',style: TextStyle( 
                         fontSize: 15, 
                         color: Colors.black,
                         fontWeight: FontWeight.w600,
                    )),
                   Padding(padding: EdgeInsets.only(top: 5)),
                   Card(
                    color: Colors.grey.shade300,
                    child: SizedBox(
                      height: 37,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Fradricast Ganteng@gmail.com',style: TextStyle( 
                         fontSize: 15, 
                         color: Colors.black,
                    ))
                        ],
                      )
                    ),
                   ),
                 ],
                 ),
               ),
                ],
                ),

               Padding(padding: EdgeInsets.only(top: 5)),
               Container(
                  child: Column(
                  children: [
               SizedBox(
                 height: 70,
                 width: 320,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                      Text('Username',style: TextStyle( 
                           fontSize: 15, 
                           color: Colors.black,
                           fontWeight: FontWeight.w600,
                      )),
                     Padding(padding: EdgeInsets.only(top: 5)),
                     Card(
                      color: Colors.grey.shade300,
                      child: SizedBox(
                        height: 37,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('IndahCahya(Username)',style: TextStyle( 
                           fontSize: 15, 
                           color: Colors.black,
                      ))
                          ],
                        )
                      ),
                     ),
                   ],
                 ),
               ),
                  ],
                  ),
                ),
              Padding(padding: EdgeInsets.only(top: 5)),
               Container(
                  child: Column(
                  children: [
               SizedBox(
                 height: 70,
                 width: 320,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                      Text('No hape',style: TextStyle( 
                           fontSize: 15, 
                           color: Colors.black,
                           fontWeight: FontWeight.w600,
                      )),
                     Padding(padding: EdgeInsets.only(top: 5)),
                     Card(
                      color: Colors.grey.shade300,
                      child: SizedBox(
                        height: 37,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('082131313(no Hp)',style: TextStyle( 
                           fontSize: 15, 
                           color: Colors.black,
                      ))
                          ],
                        )
                      ),
                     ),
                   ],
                 ),
               ),
                  ],
                  ),
                ),
              Padding(padding: EdgeInsets.only(top: 5)),
               Container(
                  child: Column(
                  children: [
               SizedBox(
                 height: 70,
                 width: 320,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                      Text('No Rekening',style: TextStyle( 
                           fontSize: 15, 
                           color: Colors.black,
                           fontWeight: FontWeight.w600,
                      )),
                     Padding(padding: EdgeInsets.only(top: 5)),
                     Card(
                      color: Colors.grey.shade300,
                      child: SizedBox(
                        height: 37,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('3334443335(No Rek)',style: TextStyle( 
                           fontSize: 15, 
                           color: Colors.black,
                      ))
                          ],
                        )
                      ),
                     ),
                   ],
                 ),
               ),
                  ],
                  ),
                ),
              Padding(padding: EdgeInsets.only(top: 5)),
               Container(
                  child: Column(
                  children: [
               SizedBox(
                 height: 70,
                 width: 320,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                      Text('Tanggal Lahir',style: TextStyle( 
                           fontSize: 15, 
                           color: Colors.black,
                           fontWeight: FontWeight.w600,
                      )),
                     Padding(padding: EdgeInsets.only(top: 5)),
                     Card(
                      color: Colors.grey.shade300,
                      child: SizedBox(
                        height: 37,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('10-20-10',style: TextStyle( 
                           fontSize: 15, 
                           color: Colors.black,
                      ))
                          ],
                        )
                      ),
                     ),
                   ],
                 ),
               ),
                  ],
                  ),
                ),
              Padding(padding: EdgeInsets.only(top: 5)),
               Container(
                  child: Column(
                  children: [
               SizedBox(
                 height: 70,
                 width: 320,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                      Text('Password',style: TextStyle( 
                           fontSize: 15, 
                           color: Colors.black,
                           fontWeight: FontWeight.w600,
                      )),
                     Padding(padding: EdgeInsets.only(top: 5)),
                     Card(
                      color: Colors.grey.shade300,
                      child: SizedBox(
                        height: 37,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Password',style: TextStyle( 
                           fontSize: 15, 
                           color: Colors.black,
                      ))
                          ],
                        )
                      ),
                     ),
                   ],
                 ),
               ),
                  ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top : 60)),
              Container(
                height: 7, 
                color : Colors.grey.shade300
              ),
              Material(
                elevation: 5,
                color: Colors.blue,
                child: MaterialButton(
                   padding:const EdgeInsets.fromLTRB(20, 15, 20, 15) ,
                   onPressed: (){
                   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>itemNav() ), (route) => false);
                },
                child: const Text('Simpan', 
                   textAlign: TextAlign.center,
                   style: TextStyle(
                   fontSize: 15,
                   color: Colors.white,
                   fontWeight: FontWeight.w800),),  
                 ),
                  )
              ],
            ))

        ],
     ),
    );
  }
}