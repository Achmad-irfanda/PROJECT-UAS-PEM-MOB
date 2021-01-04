import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:projek_uas/admin/home.dart';

class tambahdata extends StatefulWidget { 
  @override
  _tambahdataState createState() => _tambahdataState(); 
}

class _tambahdataState extends State<tambahdata> {
  
  TextEditingController controllerJudul = new TextEditingController();
  TextEditingController controllerPengarang = new TextEditingController();
  TextEditingController controllerTahun = new TextEditingController();
  TextEditingController controllerJumlah = new TextEditingController();
  TextEditingController controllerRak = new TextEditingController();

  void tambahdata() {
    var url = "http://10.0.2.2/uasmobile/tambahdata.php";

    http.post(url, body: { 
      'judul': controllerJudul.text,
      'pengarang': controllerPengarang.text,
      'tahun': controllerTahun.text,
      'jumlah': controllerJumlah.text,
      'rak': controllerRak.text,
    });
  }

  // alert data berhasil ditambahkan
  void confirm() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Text('Data Buku Berhasil Ditambahkan!! '),
    );
    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(24, 29, 93, 1),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(24, 29, 93, 1),
        child: ListView(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 150, right: 150, top: 30),
                child: Image.asset("assets/image/logo.png")),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                ),
                child: Text(
                  'Tambah Data Buku',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontFamily: 'ArialBlack'),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              margin: EdgeInsets.only(left: 50, right: 50, top: 20),
              child: TextField(
                controller: controllerJudul,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'CalibriLight',
                    color: Colors.white),
                decoration: new InputDecoration(
                  hintText: "Judul Buku",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: 'CalibriLight',
                  ),
                  suffixIcon: Icon(
                    Icons.assignment_outlined,
                    color: Colors.white,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minHeight: 32,
                    minWidth: 32,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(
                  Radius.elliptical(40.0, 40.0),
                ),
              ),
            ),
            new Container(
              padding: EdgeInsets.only(left: 10),
              margin: EdgeInsets.only(left: 50, right: 50, top: 10),
              child: TextField(
                controller: controllerPengarang,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'CalibriLight',
                    color: Colors.white),
                decoration: new InputDecoration(
                  hintText: "Pengarang",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: 'CalibriLight',
                  ),
                  suffixIcon: Icon(
                    Icons.account_box_outlined,
                    color: Colors.white,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minHeight: 32,
                    minWidth: 32,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(
                  Radius.elliptical(40.0, 40.0),
                ),
              ),
            ),
            new Container(
              padding: EdgeInsets.only(left: 10),
              margin: EdgeInsets.only(left: 50, right: 50, top: 10),
              child: TextField(
                controller: controllerTahun,
                keyboardType: TextInputType.number,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'CalibriLight',
                    color: Colors.white),
                decoration: new InputDecoration(
                  hintText: "Tahun Terbit",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: 'CalibriLight',
                  ),
                  suffixIcon: Icon(
                    Icons.ballot_outlined,
                    color: Colors.white,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minHeight: 32,
                    minWidth: 32,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(
                  Radius.elliptical(40.0, 40.0),
                ),
              ),
            ),
            new Container(
              padding: EdgeInsets.only(left: 10),
              margin: EdgeInsets.only(left: 50, right: 50, top: 10),
              child: TextField(
                controller: controllerJumlah,
                keyboardType: TextInputType.number,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'CalibriLight',
                    color: Colors.white),
                decoration: new InputDecoration(
                  hintText: "Jumlah Halaman",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: 'CalibriLight',
                  ),
                  suffixIcon: Icon(
                    Icons.article_outlined,
                    color: Colors.white,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minHeight: 32,
                    minWidth: 32,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(
                  Radius.elliptical(40.0, 40.0),
                ),
              ),
            ),
            new Container(
              padding: EdgeInsets.only(left: 10),
              margin: EdgeInsets.only(left: 50, right: 50, top: 10),
              child: TextField(
                controller: controllerRak,
                keyboardType: TextInputType.number,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'CalibriLight',
                    color: Colors.white),
                decoration: new InputDecoration(
                  hintText: "Rak",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: 'CalibriLight',
                  ),
                  suffixIcon: Icon(
                    Icons.backup_table_rounded,
                    color: Colors.white,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minHeight: 32,
                    minWidth: 32,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(
                  Radius.elliptical(40.0, 40.0),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 120, right: 120, top: 20, bottom: 30),
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text('Tambahkan Data',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'CalibriLight',
                            color: Colors.white)),
                  ),
                  color: Color.fromRGBO(1, 129, 239, 1),
                  onPressed: () {
                  tambahdata();
                  Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => new homeadmin()),
                  (Route<dynamic> route) => false);
                  confirm();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
