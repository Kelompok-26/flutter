// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:portal_costumer/Model/API/api_model.dart';
import 'package:portal_costumer/Model/Widget/Navbar_model.dart';
import 'package:provider/provider.dart';

class TukarPointScreen extends StatefulWidget {
  const TukarPointScreen({
    Key? key,
    required this.image,
    required this.providerName,
    required this.id,
  }) : super(key: key);
  final String image;
  final String providerName;
  final int id;

  @override
  State<TukarPointScreen> createState() => _PointScreenState();
}

class _PointScreenState extends State<TukarPointScreen> {
  APIModel? apimodel;
  final TextEditingController nohpController = TextEditingController();
  void initState() {
    APIModel apimodel = Provider.of<APIModel>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final apimodel = Provider.of<APIModel>(context);
    final PhoneNumberField = TextFormField(
        autofocus: false,
        controller: nohpController,
        keyboardType: TextInputType.phone,
        validator: (value) {
          if (value!.isEmpty) {
            return ("Please Enter Valid Nomor Rekening/Phone Number");
          }
          if (!RegExp(
            "^(?:[+0]9)?[0-9]{10}",
          ).hasMatch(value)) {
            return ("Please Enter Valid Nomor Rekening/Phone Number");
          }
          return null;
        },
        onSaved: (value) {
          nohpController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            hintText: "Phone number/ Nomor Rekening",
            hintStyle: const TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400),
            labelText: "Phone number/ Nomor Rekening",
            labelStyle: const TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            )));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Tukar Poin',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => itemNav()),
                (route) => false);
          },
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: 700,
            child: SvgPicture.asset(
              widget.image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 7,
            color: Colors.grey[300],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Form Penukaran Poin ke paket Data',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: const Text(
                      'Isi form berikut untuk melakukan penukaran poin ke paket data yang kamu inginkan',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: PhoneNumberField,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
                        height: 20,
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          widget.providerName,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF145374),
                    child: MaterialButton(
                      padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                      onPressed: () {
                        //show snackbar to indicate loading
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text('Transaksi'),
                            backgroundColor: Colors.green.shade300,
                          ),
                        );
                        //get response from ApiClient
                        final res = apimodel.TukarPointKeProduct(
                          id: apimodel.loginmodel!.userId!,
                          token: apimodel.loginmodel!.user.toString(),
                          idProduct: widget.id,
                          number: nohpController.text,
                        );

                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        if (res == null) {
                          Fluttertoast.showToast(msg: 'Transaksi Gagal');
                          return;
                        }
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => itemNav(),
                            ),
                            (route) => false);
                      },
                      child: const Text(
                        'Submit',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
