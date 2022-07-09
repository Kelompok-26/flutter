import 'package:flutter/material.dart';
import 'package:portal_costumer/Model/Navbar_model.dart';
class SyaratDanKetentuanScreen extends StatelessWidget {
  const SyaratDanKetentuanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( 
        backgroundColor: Colors.white,
        title: Text('Syarat Dan Ketentuan',
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
        Text('Ketentuan Umum aplikasi C-Loyal', style: TextStyle( 
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
              Text('1. Aplikasi C-Loyal hanya digunakan untuk menggunakan layanan yang tersedia',
                   style: TextStyle(
                      fontSize: 15, 
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),),
               Text('2. Aplikasi C-Loyal tidak boleh disalahgunakan untuk menipu, merugikan, dan/atau menimbulkan ketidaknyamanan kepada pihak lain.',
                   style: TextStyle(
                      fontSize: 15, 
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),),
                Text('3. Pengguna tidak diperbolehkan mengubah isi situs dan/atau aplikasi C-Loyal untuk tujuan apapun',
                   style: TextStyle(
                      fontSize: 15, 
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),),
                 Text('4. C-Loyal tidak bertanggung jawab atas kesalahan pengunduhan versi aplikasi yang dilakukan pengguna dan ketidakcocokan perangkat yang digunakan pengguna, serta hal-hal yang terjadi akibatnya. ',
                   style: TextStyle(
                      fontSize: 15, 
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),),
                 Text('5. Jika pengguna terbukti menggunakan aplikasi untuk tujuan yang membahayakan, merugikan, atau di luar tujuan penggunaan yang dimaksud aplikasi ini, maka C-Loyal berhak melarang pengguna untuk menggunakan aplikasi C-Loyal.',
                   style: TextStyle(
                      fontSize: 15, 
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),),
                  Text('6. C-Loyal juga berhak melarang pengguna yang terbukti menggunakan aplikasi dengan perangkat yang tidak cocok atau tidak sah.',
                   style: TextStyle(
                      fontSize: 15, 
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),),
                    Text('7. Pengguna wajib menjaga kerahasiaan informasi yang didapatkan di aplikasi C-Loyal dan tidak menyalahgunakannya untuk tujuan yang merugikan pihak lain.',
                   style: TextStyle(
                      fontSize: 15, 
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),),
                    Text('8. Pengguna dihimbau untuk tidak melakukan segala bentuk tindakan yang merugikan atau menimbulkan ketidaknyamanan, seperti mengancam atau melecehkan, saat menggunakan aplikasi C-Loyal.',
                   style: TextStyle(
                      fontSize: 15, 
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),),
                    Text('9. Pengguna wajib mengikuti syarat dan ketentuan promo yang berlaku di C-Loyal dan dilarang menyalahgunakan promo yang terdapat di aplikasi C-Loyal.',
                   style: TextStyle(
                      fontSize: 15, 
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),),
                  Text('10. Pengguna dilarang menggunakan informasi/ program/ fitur yang terdapat di situs dan aplikasi C-Loyal untuk melanggar peraturan perundang-undangan yang berlaku di Indonesia.',
                   style: TextStyle(
                      fontSize: 15, 
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),),
                Text('11. Pengguna bertanggung jawab penuh atas akun C-Loyal miliknya dan dapat dimintai pertanggungjawaban jika sewaktu-waktu terjadi kerugian yang disebabkan oleh akunnya, meskipun akun tersebut disalahgunakan oleh pihak lain.',
                   style: TextStyle(
                      fontSize: 15, 
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),),
                  Text('12. Jika akun pengguna diretas atau dicuri sehingga pengguna kehilangan kontrol atas akunnya, maka pengguna wajib memberitahu C-Loyal sesegera mungkin agar kami dapat menonaktifkan akun pengguna dan melakukan tindak pencegahan lainnya.',
                   style: TextStyle(
                      fontSize: 15, 
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),),
                  Text('13.  C-Loyal berhak membatalkan segala transaksi yang mencurigakan atau tidak sesuai dengan syarat dan ketentuan yang berlaku.',
                   style: TextStyle(
                      fontSize: 15, 
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),),
            ],
          ),
         )
      ],
    ),
    );
  }
}