import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projek_uas/admin/crud/databuku.dart';
import 'package:projek_uas/admin/crud/tambah.dart';
import 'package:projek_uas/admin/scann/homescan.dart';
import 'package:projek_uas/admin/sidebar/petunjuk.dart';
import 'package:projek_uas/admin/sidebar/tentang.dart';
import 'package:projek_uas/admin/sidebar/versi.dart';
import 'package:projek_uas/umum/pilih%20user.dart';

class homeadmin extends StatelessWidget {
  homeadmin({this.email});
  final String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //side bar dalam flutter bernama sidedrawer
      // dan ini meterial yang dimiliki widget scaffold.
      //kelas sidedrawer ku letakkan di bawah body ya.
      drawer: SideDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(24, 29, 93, 1),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(24, 29, 93, 1),
        child: ListView(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 120, right: 120, top: 30),
                child: Image.asset("assets/image/logo.png")),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 30, bottom: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2, right: 251),
                    child: Text(
                      'SCAN BOOK',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'CalibriBold'),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, right: 100, left: 18),
                    child: Text(
                      'Temukan detail buku lebih cepat, tepat, tanpa ribet.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'CalibriLight'),
                    ),
                  )
                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 24, left: 20, right: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          new MaterialPageRoute(
                            builder: (BuildContext context) => homescan(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 138.0, right: 138, top: 8, bottom: 8),
                        child: new CircleAvatar(
                          radius: 60,
                          backgroundColor: Color.fromRGBO(206, 230, 200, 1),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 1, bottom: 1),
                            child: CircleAvatar(
                              radius: 56,
                              backgroundImage:
                                  AssetImage('assets/image/qr.png'),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 88.0, left: 10, right: 10),
                                child: Text(
                                  'SCAN',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(206, 230, 251, 1),
                      borderRadius: BorderRadius.all(
                        Radius.elliptical(10.0, 10.0),
                      ),
                    ),
                  ),
                  
// button tambah data buku dan tampilkan data buku
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                        top: 18, left: 20, right: 20, bottom: 30),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 10, right: 10),
                      child: Row(
                        children: [
                          Card(
                            color: Color.fromRGBO(206, 230, 200, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0))),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        tambahdata(),
                                  ),
                                );
                              },
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 26,
                                      right: 26,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 9, left: 10, right: 10),
                                      child: Image.asset(
                                          "assets/image/plus.png",
                                          width: 100,
                                          height: 80,
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, right: 10, bottom: 15),
                                    child: Text("Tambah Data",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 18)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            color: Color.fromRGBO(206, 230, 200, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0))),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        databuku(),
                                  ),
                                );
                              },
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 26,
                                      right: 26,
                                    ),
                                    child: Image.asset("assets/image/book.png",
                                        width: 130,
                                        height: 90,
                                        fit: BoxFit.fill),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, right: 10, bottom: 15),
                                    child: Text("Data Buku",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 18)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(206, 230, 251, 1),
                      borderRadius: BorderRadius.all(
                        Radius.elliptical(10.0, 10.0),
                      ),
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
          ],
        ),
      ),
    );
  }
}



//kelas side drawer / side bar
class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}


class _SideDrawerState extends State<SideDrawer> {

    void confirm() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Text('Anda Berhasil Keluar!! '),
    );
    showDialog(context: context, child: alertDialog,);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Image.asset("assets/image/logo.png"),
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(24, 29, 93, 1),
            ),
          ),
          ListTile(
            leading: Icon(Icons.integration_instructions_outlined),
            title: Text('Petunjuk'),
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (BuildContext context) => petunjuk(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('Tentang Kami'),
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (BuildContext context) => tentang(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.stacked_line_chart_outlined),
            title: Text('Versi Aplikasi'),
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (BuildContext context) => versi(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: (){
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => new pilihuser()),
                  (Route<dynamic> route) => false);
              confirm();
            }),
        ],
      ),
    );
  }
}
