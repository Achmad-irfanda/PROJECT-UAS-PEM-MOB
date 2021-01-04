import 'package:flutter/material.dart';
import 'package:projek_uas/admin/home.dart';
import 'package:projek_uas/admin/login/login.dart'; 
import 'package:http/http.dart' as http;

class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {

   
  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerNotelp = new TextEditingController();
  TextEditingController controllerEmail = new TextEditingController();
  TextEditingController controllerJumlah = new TextEditingController();
  TextEditingController controllerPassword = new TextEditingController();
 
  void tambahdata() {
    var url = "http://10.0.2.2/uasmobile/register.php";

    http.post(url, body: {
      'nama': controllerNama.text,
      'notelp': controllerNotelp.text,
      'email': controllerEmail.text,
      'password': controllerPassword.text,
    });
  }

  // alert data berhasil ditambahkan
  void confirm() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Text('Anda Berhasil Mendaftar!! '),
    );
    showDialog(context: context, child: alertDialog,);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color.fromRGBO(24, 29, 93, 1),
          child: ListView(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 107, right: 107, top: 50),
                  child: Image.asset("assets/image/logo.png")),
              Center( 
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 20),
                  child: Text(
                    'Daftar Akun',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'ArialBlack'),
                  ),
                ),
              ),
              new Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 10),
                margin: EdgeInsets.only(left: 50, right: 50),
                child: TextField(
                  controller: controllerNama,
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'CalibriLight',
                      color: Colors.white),
                  decoration: new InputDecoration(
                    hintText: "Nama Lengkap",
                    hintStyle: TextStyle( 
                      color: Colors.white,
                      fontFamily: 'CalibriLight',
                    ),
                    suffixIcon: Icon(
                      Icons.account_circle_outlined,
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
                  controller: controllerNotelp,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'CalibriLight',
                      color: Colors.white),
                  decoration: new InputDecoration(
                    hintText: "No. Telepon",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: 'CalibriLight',
                    ),
                    suffixIcon: Icon(
                      Icons.phone,
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
                  controller: controllerEmail,
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'CalibriLight',
                      color: Colors.white),
                  decoration: new InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: 'CalibriLight',
                    ),
                    suffixIcon: Icon(
                      Icons.email_outlined,
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
                  controller: controllerPassword,
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'CalibriLight',
                      color: Colors.white),
                  decoration: new InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: 'CalibriLight',
                    ),
                    suffixIcon: Icon(
                      Icons.vpn_key_outlined ,
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
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'CalibriLight',
                      color: Colors.white),
                  decoration: new InputDecoration(
                    hintText: "Konfirmasi Password",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: 'CalibriLight',
                    ),
                    suffixIcon: Icon(
                      Icons.vpn_key_outlined ,
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
                margin: EdgeInsets.only(left: 160, right: 160, top: 20),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 2, right: 2),
                    child: Text('Daftar',
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
                  },
                ),
              ),
              new Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 126, bottom: 70),
                child: Row(
                  children: [
                    Text(
                      'Sudah punya akun?',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'CalibriLight'),
                    ),
                    FlatButton(
                      child: Text(
                        'Masuk',
                        style: TextStyle(
                            color: Color.fromRGBO(1, 129, 239, 1),
                            fontFamily: 'CalibriLight'),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop(
                          new MaterialPageRoute(
                            builder: (BuildContext context) => login(),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
