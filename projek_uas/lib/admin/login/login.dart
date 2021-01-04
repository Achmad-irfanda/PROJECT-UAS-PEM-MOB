import 'package:flutter/material.dart';
import 'package:projek_uas/admin/home.dart';
import 'package:projek_uas/admin/login/register.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

 
String email='';

class Mylog extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new login(),
    );
  }
}

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {


TextEditingController email=new TextEditingController();
TextEditingController pass=new TextEditingController();

Future<List> _login() async {
  final response = await http.post("http://10.0.2.2/uasmobile/login.php", body: {
    "email": email.text,
    "password": pass.text,
  });

  var datauser = json.decode(response.body);

  if(datauser.length==0){
    setState(() {
          confirm();
        });
  }else{
    if(datauser[0]['level']=='admin'){
                       Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)
                      => new homeadmin(),
                  ),
                  );
                }

    setState(() {
          email= datauser[0]['email'];
        });

  }

  return datauser;
}

    void confirm() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Text('Email/Password Yang Anda Masukkan Salah!! '),
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
                  margin: EdgeInsets.only(left: 90, right: 90, top: 50), 
                  child: Image.asset("assets/image/logo.png")), 

              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 60, bottom: 20),
                  child: Text(
                    'Masuk',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'ArialBlack'),
                  ),
                ),
              ),
              new Container(
                padding: EdgeInsets.only(left: 10),
                margin: EdgeInsets.only(left: 50, right: 50),
                child: 
                TextField(
                  controller: email,
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
                  obscureText: true, 
                  controller: pass,
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
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 160, right: 160, top: 20),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 2, right: 2),
                    child: Text('Masuk',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'CalibriLight',
                            color: Colors.white)),
                  ),
                  color: Color.fromRGBO(1, 129, 239, 1),
                  onPressed: () {
                    _login();
                  },
                ),
              ),
              
              new Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 126, bottom: 70),
                child: Row(
                  children: [
                    Text(
                      'Belum punya akun?',
                      style: TextStyle(color: Colors.white,fontFamily: 'CalibriLight'),
                    ),
                    FlatButton(
                      child: Text(
                        'buat akun',
                        style: TextStyle(
                            color: Color.fromRGBO(1, 129, 239, 1),
                            fontFamily: 'CalibriLight'),
                      ),
                      onPressed: () {
                       Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)
                      => register(),
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
