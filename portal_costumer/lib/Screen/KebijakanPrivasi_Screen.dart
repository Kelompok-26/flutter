import 'package:flutter/material.dart';
import 'package:portal_costumer/Model/Navbar_model.dart';
class KebijakanPrivasiScreen extends StatelessWidget {
  const KebijakanPrivasiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( 
        backgroundColor: Colors.white,
        title: Text('Kebijakan Privasi',
            style: TextStyle(
              fontSize: 20,
                color: Colors.black,
        ),),
        centerTitle: true, 
        leading: IconButton(
          icon: Icon(Icons.arrow_back, 
          color: Color.fromARGB(255, 66, 179, 235),
          ),
          onPressed: (){
           Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>itemNav() ), (route) => false);
          },
        ),
      ),
    body: ListView(
      padding: EdgeInsets.only(left: 20 , right: 20),
      scrollDirection: Axis.vertical,
      children: [
        Padding(padding: EdgeInsets.only(top: 20)),
        Text('Kebijakan Privasi C-Loyal', style: TextStyle( 
          fontSize: 20, 
          fontWeight: FontWeight.w800, 
          color: Colors.black,
        ),), 
         Padding(padding: EdgeInsets.only(top: 20)),
         Container( 
          width: 100,
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('C-Loyal menetapkan Kebijakan Privasi ini untuk membantu pengguna membuat keputusan yang jelas tentang apakah menggunakan atau tetap menggunakan Layanan C-Loyal. Jika pengguna tidak setuju dengan praktek C-Loyal, mohon untuk tidak menggunakan LayananC-Loyal.\u000DPenggunaan atas Layanan C-Loyal dan setiap informasi pribadi yang diberikan oleh Pengguna pada Layanan C-Loyal senantiasa tunduk pada syarat dan ketentuan Kebijakan Privasi.\u000DMohon dicatat bahwa pengiriman konten oleh pengguna atau konten lainnya yang dipublikasikan atas arahan atau kebijaksanaan para pengguna dari Layanan C-loyal menjadi konten yang dipublikasikan dan tidak dianggap sebagai informasi yang dapat teridentifikasi secara pribadi tunduk pada Kebijakan Privasi ini.',
                   style: TextStyle(
                      fontSize: 15, 
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),),  
            ],
          ),
         ), 
      Padding(padding: EdgeInsets.only(top: 20)),
        Text('Apa aja yang diatur dalam kebijakan ini?', style: TextStyle( 
          fontSize: 20, 
          fontWeight: FontWeight.w800, 
          color: Colors.black,
        ),), 
         Padding(padding: EdgeInsets.only(top: 20)),
         Container( 
          width: 100,
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Kebijakan privasi ini meliputi perlakukan terhadap informasi pengguna, termasuk informasi identitas pribadi, yang diperoleh oleh C-Loyal, termasuk informasi yang diperoleh saat pengguna menggunakan Layanan C-Loyal yang disediakan oleh C-Loyal.Kebijakan Privasi ini tidak berlaku untuk praktek perusahaan yang tidak dimiliki atau tidak dikendalikan oleh C-Loyal, atau untuk individu yang tidak dipekerjakan atau dipimpin oleh C-Loyal, termasuk pihak ketiga yang kepadanya C-Loyal dapat mengungkap informasi pengguna sebagaimana ditetapkan dalam Kebijakan Privasi ini.',
                   style: TextStyle(
                      fontSize: 15, 
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),),  
            ],
          ),
         ),
      Padding(padding: EdgeInsets.only(top: 20)),
        Text('Informasi yang C-Loyal kumpulkan', style: TextStyle( 
          fontSize: 20, 
          fontWeight: FontWeight.w800, 
          color: Colors.black,
        ),), 
         Padding(padding: EdgeInsets.only(top: 20)),
         Container( 
          width: 100,
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('C-Loyal dapat memperoleh berbagai jenis informasi berikut ini dari atau mengenai pengguna atau perangkat telepon seluler pengguna, yang dapat meliputi informasi yang dapat digunakan untuk mengidentifikasi pengguna sebagaimana ditetapkan di bawah (Informasi Identifikasi PribadiInformasi yang Disediakan Pengguna: Pengguna menyediakan Informasi Identifikasi Pribadi tertentu, seperti nomor telepon seluler, nama push notification (jika ada), informasi tagihan (jika ada) dan informasi perangkat seluler Pengguna kepada Indosat Ooredoo Hutchison saat memilih untuk berpartisipasi dalam penggunaan Layanan C-Loyal,, seperti melakukan registrasi sebagai pengguna.Informasi Log File: Saat Pengguna menggunakan Layanan C-Loyal, secara otomatis mencatat informasi tertentu web browser pengguna saat mengirim kapan saja pengguna mengunjungi setiap situs web yang dapat memperlihatkan keinginan, kebiasaan, favorit dari pengguna dan setiap informasi yang terkait dengan pengguna. Catatan server ini dapat meliputi informasi seperti permintaan web Pengguna, alamat Internet Protocol ("IP"), jenis browser, bahasa browser, halaman dan URL perujuk, jenis platform, jumlah klik, nama domain, halaman pertama situs web, halaman yang dilihat dan urutan halaman-halaman itu, jumlah waktu yang dipakai pada halaman khusus, tanggal dan waktu permintaan Pengguna, satu cookies atau lebih yang secara unik dapat mengidentifikasi browser Pengguna, nomor telepon Pengguna.',
                   style: TextStyle(
                      fontSize: 15, 
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),),  
            ],
          ),
         ),
        Padding(padding: EdgeInsets.only(top: 20)),
        Text('Informasi yang C-Loyal tidak kumpulkan', style: TextStyle( 
          fontSize: 20, 
          fontWeight: FontWeight.w800, 
          color: Colors.black,
        ),), 
         Padding(padding: EdgeInsets.only(top: 20)),
         Container( 
          width: 100,
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('C-Loyal tidak mengumpulkan nama, email, alamat atau informasi kontak lainnya dari buku alamat seluler para penggunanya atau daftar kontak selain nomor telepon seluler milik Pengguna.',
                   style: TextStyle(
                      fontSize: 15, 
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),),  
            ],
          ),
         ),
        Padding(padding: EdgeInsets.only(top: 20)),
        Text('Perubahan dan Pemutahiran atas Kebijakan Privasi', style: TextStyle( 
          fontSize: 20, 
          fontWeight: FontWeight.w800, 
          color: Colors.black,
        ),), 
         Padding(padding: EdgeInsets.only(top: 20)),
         Container( 
          width: 100,
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Kebijakan Privasi ini dapat direvisi secara berkala dan ini akan direfleksikan dengan "tanggal revisi terakhir" di bawah ini. Silakan kunjungi kembali halaman ini untuk tetap mengetahui segala perubahan. Penggunaan terus menerus oleh pengguna atas Layanan Indosat Ooredoo Hutchison dianggap sebagai persetujuan pengguna atas Kebijakan Privasi ini dan perubahan-perubahannya.PENGGUNA SECARA TEGAS MENGAKUI BAHWA PENGGUNA TELAH MEMBACA SYARAT DAN KETENTUAN LAYANAN INI SERTA MEMAHAMI HAK, KEWAJIBAN, SYARAT DAN KETENTUAN YANG DIATUR DI SINI. DENGAN MENEKAN TOMBOL ACCEPT DAN/ATAU MELANJUTKAN MENGGUNAKAN LAYANAN INDOSAT OOREDOO HUTCHISON, MAKA PENGGUNA SECARA TEGAS MENYETUJUI TERIKAT OLEH SYARAT DAN KETENTUAN LAYANAN DAN MEMBERI KEPADA INDOSAT OOREDOO HUTCHISON SETIAP HAK YANG DITETAPKAN DI SINI.',
                   style: TextStyle(
                      fontSize: 15, 
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),),  
            ],
          ),
         ),
      ],
    ),
    );
  }
}