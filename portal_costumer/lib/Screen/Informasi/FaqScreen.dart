// ignore_for_file: unnecessary_const, file_names, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:portal_costumer/Model/Widget/Navbar_model.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 238, 238),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'FAQ',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
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
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                  ),
                ),
              ],
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                left: 20.0,
              ),
              child: const Text(
                'Paling sering ditanyakan',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5.0),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 15),
                      child: Text(
                        'Umum',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 15),
                      ),
                    ),
                    ExpansionTile(
                      title: Text(
                        'Transaksi apa saja yang bisa dilakukan ?',
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Dalam layanan C-loyal ini transaksi yang dapat dilakukan'
                            ' oleh pengguna adalah reedem untuk mendapatkan'
                            ' poin dan penukaran poin yang dapat ditukarkan dalam bentuk'
                            ' pulsa, paket data, cashout, dan e-money',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text(
                        'Bagaimana cara menukarkan poin ?',
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Untuk melakukan penukaran poin tentu saja kamu harus memiliki'
                            ' sejumlah poin terhadap penawaran yang ingin dilakukan. '
                            ' Untuk memiliki atau menambah jumlah poin kamu bisa melakukan '
                            ' pembelian/redeem terlebih dahulu.',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text(
                        'Bagaimana cara melakukan redeem ?',
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Redeem merupakan salah satu fitur yang dimiliki oleh'
                            ' C-Loyal guna mengumpulkan poin terhadap suatu transaksi'
                            ' yang telah dilakukan. Untuk melakukannya kamu bisa menuju'
                            ' menu Redeem kemudian isi data secara lengkap kemudian submit'
                            ' data yang telah kamu isi. Setelah mengirim, proses transaksimu'
                            ' akan diajukan kepada admin untuk persetujuan.',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 15, left: 15),
                      child: Text(
                        'Akun',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 15),
                      ),
                    ),
                    const ExpansionTile(
                      title: Text(
                        'Bagaimana cara melakukan perubahan profil?',
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Untuk melakukan perubahan profil pada akun yang Anda miliki,'
                            ' Anda dapat pergi menuju menu profile dengan menekan Profil'
                            ' yang tampil pada navbar sebelah kanan, kemudian pilih Edit Profil.'
                            ' Setelah itu Anda dapat bebas merubah identitas yang Anda miliki'
                            ' pada halaman tersebut dan jangan lupa untuk klik “Simpan” untuk'
                            ' menyimpan seluruh informasi data Anda yang telah diperbarui.',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                    const ExpansionTile(
                      title: const Text(
                        'Apakah pengubahan nomor rekening memengaruhi poin?',
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Pada dasarnya pengubahan nomor rekening pada profil'
                            ' Anda tidak akan memengaruhi jumlah poin yang Anda miliki,'
                            ' karena keseluruhan data telah tersimpan berdasarkan email'
                            ' yang telah Anda daftarkan ketika pertama kali menggunakan'
                            ' aplikasi C-Loyal.',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(top: 5.0),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 15),
                      child: Text(
                        'Transaksi',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 15),
                      ),
                    ),
                    ExpansionTile(
                      title: Text(
                        'Apa saja syarat melakukan transaksi redeem?',
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Untuk melakukan transaksi redeem Anda perlu memiliki nomor'
                            ' rekening terlebih dahulu yang digunakan sebagai pembayaran,'
                            ' kemudian benefit dari transaksi redeem yang Anda lakukan adalah'
                            ' berupa poin yang nantinya dapat digunakan untuk transaksi lainnya.',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text(
                        'Bagaimana mengetahui suatu penawaran masih tersedia?',
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Untuk mengetahui apakah suatu penawaran masih tersedia stoknya'
                            ' atau tidak Anda dapat menekan salah satu penawaran yang tampil'
                            ' dalam layar Anda dan maka akan muncul detail atau deskripsi produk'
                            ' tersebut. Dalam detail tersebut dicantumkan jumlah stok yang masih'
                            ' tersedia untuk penawaran produk yang dipilih.',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text(
                        'Berapa kali dapat melakukan transaksi?',
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Untuk melakukan transaksi sendiri C-Loyal tidak membatasi'
                            ' bagi seluruh pengguna apakah terdapat minimal ataupun maksimal.'
                            ' Hal ini akan didasarkan pada keinginan Anda yang ingin melakukan'
                            ' transaksi, apabila transaksi redeem bergantung pada keuangan Anda'
                            ' dan transaksi tukar poin berdasarkan pada poin yang Anda miliki.',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
