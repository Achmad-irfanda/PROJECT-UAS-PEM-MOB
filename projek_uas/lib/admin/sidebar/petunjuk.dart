import 'package:flutter/material.dart';
 
class petunjuk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( 
        backgroundColor: Color.fromRGBO(24, 29, 93, 1),
        centerTitle: true,
        title: Text(
          'Petunjuk',
          style: TextStyle(fontSize: 26, fontFamily: 'ArialBlack'),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(24, 29, 93, 1),
        child: Container(
          margin: EdgeInsets.only(top: 50),
          child: ListView(
            children: [ 
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 20, left: 53, right: 53),
                child: Text(
                  'Petunjuk Penggunaan Scan Book',
                  style: TextStyle(fontSize: 24, fontFamily: 'CalibriBold'),
                ),
              ),
              Container(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8, right: 20, left: 20),
                    child: Text(
                      '1. Pengguna aplikasi memiliki akses ke 2 jenis pengguna (user), yaitu sebagai admin aplikasi ataupun sebagai user.',
                      style: TextStyle(fontSize: 18, fontFamily: 'CalibriBold'),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8, right: 20, left: 20),
                    child: Text(
                      '2.	Pada halaman admin pengguna akan disuguhkan beberapa icon button yang dapat digunakan untuk mengoperasikan data aplikasi. Seperti menambahkan, menghapus, dan mengedit data buku yang ada di dalam aplikasi. ',
                      style: TextStyle(fontSize: 18, fontFamily: 'CalibriBold'),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8, right: 20, left: 20),
                    child: Text(
                      '3.	Fitur QR Code yang ada pada aplikasi dapat digunakan admin untuk melihat detail buku yang terdapat pada sampul setiap buku. ',
                      style: TextStyle(fontSize: 18, fontFamily: 'CalibriBold'),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8, right: 20, left: 20),
                    child: Text(
                      '4.	Fitur lainnya yang dapat digunakan oleh admin adalah icon profil yang terdapat pada pojok kanan atas dan side bar yang berada di pojok kiri atas.  ',
                      style: TextStyle(fontSize: 18, fontFamily: 'CalibriBold'),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8, right: 20, left: 20),
                    child: Text(
                      '5.	Icon profil pengguna dapat digunakan untuk log-out admin, sedangkan pada menu side bar, berfungsi untuk menampilkan beberapa halaman lain. Seperti petunjuk penggunaan aplikasi, tentang kami, dan versi aplikasi.  ',
                      style: TextStyle(fontSize: 18, fontFamily: 'CalibriBold'),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 40, right: 20, left: 20),
                    child: Text(
                      '6.	Kemudian pada halaman user, pengguna akan disuguhkan dengan beberapa icon yang tidak jauh berbeda dengan halaman admin, sehingga fitur utama yang di sediakan tidak akan jauh berbeda. Hanya saja user tidak dapat menambahkan data buku yang ada pada aplikasi. ',
                      style: TextStyle(fontSize: 18, fontFamily: 'CalibriBold'),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  ],
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40.0),
                topLeft: Radius.circular(40.0)),
          ),
        ),
      ),
    );
  }
}
