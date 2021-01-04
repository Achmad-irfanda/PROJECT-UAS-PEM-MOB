import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:projek_uas/admin/home.dart';

class Editdata extends StatefulWidget {
  final list;
  final index;

  Editdata({this.list, this.index});
  @override
  _EditdataState createState() => _EditdataState();
}

class _EditdataState extends State<Editdata> {
  TextEditingController controllerJudul;
  TextEditingController controllerPengarang;
  TextEditingController controllerTahun;
  TextEditingController controllerJumlah;
  TextEditingController controllerRak;

  void editdata() {
    var url = "http://10.0.2.2/uasmobile/update.php";

    http.post(url, body: {
      'id': widget.list[widget.index]['id'],
      'judul': controllerJudul.text,
      'pengarang': controllerPengarang.text,
      'tahun': controllerTahun.text,
      'jumlah': controllerJumlah.text,
      'rak': controllerRak.text,
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    controllerJudul =
        new TextEditingController(text: widget.list[widget.index]['judul']);
    controllerPengarang =
        new TextEditingController(text: widget.list[widget.index]['pengarang']);
    controllerTahun =
        new TextEditingController(text: widget.list[widget.index]['tahun']);
    controllerJumlah =
        new TextEditingController(text: widget.list[widget.index]['jumlah']);
    controllerRak =
        new TextEditingController(text: widget.list[widget.index]['rak']);
    super.initState();
  }

  void confirm() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Text('Data Buku Berhasil Di Edit!! '),
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
                  'Edit Data Buku',
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
              margin:
                  EdgeInsets.only(left: 130, right: 130, top: 20, bottom: 30),
              child: new RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Color.fromRGBO(1, 129, 239, 1),
                  child: Text('Edit Data',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'CalibriLight',
                            color: Colors.white)
                  ),
                  onPressed: () {
                    editdata();
                    Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => new homeadmin()),
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
