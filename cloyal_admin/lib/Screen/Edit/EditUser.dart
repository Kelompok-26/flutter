import 'dart:convert';

import 'package:cloyal_admin/Model/ProdukModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EditUser extends StatefulWidget {
  EditUser({Key? key}) : super(key: key);

  // final ProdukModel model;
  // final VoidCallback reload;
  // EditUser(this.model, this.reload);

  @override
  State<EditUser> createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {
  
  final _key = new GlobalKey<FormState>();

  // String profil, name, id, alamat;
  // TextEditingController profil, name, id, alamat;

  // setup() {
  //   txtProfil = TextEditingController(text: widget.model.profil);
  //   txtName = TextEditingController(text: widget.model.name);
  //   txtId = TextEditingController(text: widget.model.id);
  //   txtAlamat = TextEditingController(text: widget.model.alamat);
  // }

  // check() {
  //   final form = _key.currentState;
  //   if (form.validate()) {
  //     form.save();
  //     submit();
  //   } else {

  //   }
  //   submit() async{
  //     final response = await http.post(BaseUrl.editUser. body: {
  //       'profil' : profil,
  //       'name' : name,
  //       'id' : id,
  //       'alamat' : alamat,
  //     });
  //     final data = jsonDecode(response.body);
  //     int value = data['value'];
  //     String pesan = data['message'];

  //     if (value == 1) {
  //       setState(() {
  //         widget.reload;
  //         Navigator.pop(context);
  //       });
  //     } else {
  //       print(pesan);
  //     }
  //     }
  //   }

  //   @override
  //   void initState() {

  //     super.initState();
  //     setup();
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Edit User',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/divider.png',
            width: 350,
            height: 70,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade200),
              ),
            ),
            child: TextFormField(
              // autofocus: false,
              // controller: profil,
              // keyboardType: TextInputType.emailAddress,              
              // onSaved: (e) => profil = e,
                // phonenumberController.text = value!;              
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                // prefixIcon: const Icon(Icons.mail_outline),
                contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                hintText: "ID",
                labelText: "ID Transaksi",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade200),
              ),
            ),
            child: TextFormField(
              autofocus: false,
              // controller: phonenumberController,
              keyboardType: TextInputType.emailAddress,              
              onSaved: (value) {
                // phonenumberController.text = value!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                // prefixIcon: const Icon(Icons.mail_outline),
                contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                hintText: "Nama",
                labelText: "Nama Pengguna",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade200),
              ),
            ),
            child: TextFormField(
              autofocus: false,
              // controller: phonenumberController,
              keyboardType: TextInputType.emailAddress,              
              onSaved: (value) {
                // phonenumberController.text = value!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                // prefixIcon: const Icon(Icons.mail_outline),
                contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                hintText: "Address",
                labelText: "Alamat",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade200),
              ),
            ),
            child: TextFormField(
              autofocus: false,
              // controller: phonenumberController,
              keyboardType: TextInputType.emailAddress,              
              onSaved: (value) {
                // phonenumberController.text = value!;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                // prefixIcon: const Icon(Icons.mail_outline),
                contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                hintText: "No",
                labelText: "No Telepon",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Simpan'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Batal'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
