
import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart';
import 'package:simple_permissions/simple_permissions.dart';

class homescan extends StatefulWidget {
  @override
  _homescanState createState() => _homescanState();
}
 
class _homescanState extends State<homescan> {
  //method untuk menampilkan data string hasil scan
  String data = " ";

  //method untuk memberikan penggondisian dan menampilkan hasil scan
  void scanQR() async {
    bool result = await SimplePermissions.checkPermission(Permission.Camera);
    PermissionStatus status = PermissionStatus.notDetermined;
    if (!result) 
      status = await SimplePermissions.requestPermission(Permission.Camera);
    if (result || status == PermissionStatus.authorized) {
      String scanResult = await scan();
      setState(() {
        data = scanResult;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: new AppBar(
          backgroundColor: Color.fromRGBO(24, 29, 93, 1),
          centerTitle: true,
          title: Text(
            'SCAN BOOK',
            style: TextStyle(fontSize: 26, fontFamily: 'ArialBlack'),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color.fromRGBO(24, 29, 93, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 90, right: 90, top: 50),
                  child: Image.asset("assets/image/logo.png")),
              Text(
                data,
                style: TextStyle(
                    fontSize: 20, color: Colors.white, fontFamily: 'SegoeUIBold'),
                textAlign: TextAlign.center,
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
                    child: Text('Mulai',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'CalibriLight',
                            color: Colors.white)),
                  ),
                  color: Color.fromRGBO(1, 129, 239, 1),
                  onPressed: () {
                    scanQR();
                  },
                ),
              ),
            ],
          ),
        ),
      );
  }
}
