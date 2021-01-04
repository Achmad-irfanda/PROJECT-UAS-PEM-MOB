import 'package:flutter/material.dart';

class tentang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(24, 29, 93, 1),
        centerTitle: true,
        title: Text(
          'Tentang Kami',
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
                margin: EdgeInsets.only(top: 30, bottom: 20),
                child: Center(
                  child: Text(
                    'Deskripsi Aplikasi',
                    style: TextStyle(fontSize: 24, fontFamily: 'CalibriBold'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, bottom: 8, right: 15, left: 15),
                child: Text(
                  'Scan Book, merupakan aplikasi yang digunakan untuk memanajemen data buku pada sebuah perpustakaan yang dikelola oleh admin perpustakaan, dimana memiliki fitur pengolah data seperti menambahkan, menghapus, mengedit dan menampilkan data buku. Selain itu aplikasi ini juga memiliki fitur pendukung yang canggih yaitu QR CODE, yang dapat digunakan untuk membaca detail buku yang berada pada perpustakaan. ',
                  style: TextStyle(fontSize: 18, fontFamily: 'CalibriBold'),
                  textAlign: TextAlign.justify,
                ),
              ),

              // profil pegembang
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 20),
                child: Center(
                  child: Text(
                    'Profil Pengembang',
                    style: TextStyle(fontSize: 24, fontFamily: 'CalibriBold'),
                  ),
                ),
              ),

              Container(
                child: Column(
                  children: [
                    card(
                        gambar: ("assets/image/permana.jpg"),
                        nama: ("I Kadek Permana Putra"),
                        nim: ("1815091022"),
                        kelas: ("Kelas A")),
                  ],
                ),
              ),

              Container(
                child: Column(
                  children: [
                    card(
                        gambar: ("assets/image/irfanda.png"),
                        nama: ("Achmad Irfanda"),
                        nim: ("1815091032"),
                        kelas: ("Kelas A")),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 40),
                child: Column(
                  children: [
                    card(
                        gambar: ("assets/image/dezenda.png"),
                        nama: ("I Nyoman Dezenda Jaya"),
                        nim: ("1815091053"),
                        kelas: ("Kelas A")),
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

// kelas pengaturan card (untuk parsing datanya)

class card extends StatelessWidget {
  card({this.gambar, this.nama, this.nim, this.kelas});

  final String gambar;
  final String nama;
  final String nim;
  final String kelas;

  @override
  Widget build(BuildContext context) {
    return // permana
        Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Card(
        color: Color.fromRGBO(206, 230, 200, 1),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        child: InkWell(
          child: Row(
            children: <Widget>[
              // footo
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 26, top: 10, bottom: 10),
                  child: CircleAvatar(
                    radius: 56,
                    backgroundImage: AssetImage(gambar),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 88.0, left: 10, right: 10),
                    ),
                  ),
                ),
              ),

              // deskripsi
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: Text(nama,
                        style:
                            TextStyle(fontSize: 20, fontFamily: 'CalibriBold'),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(nim,
                        style:
                            TextStyle(fontSize: 18, fontFamily: 'CalibriLight'),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(kelas,
                        style:
                            TextStyle(fontSize: 18, fontFamily: 'CalibriLight'),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
