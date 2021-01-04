import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projek_uas/admin/sidebar/petunjuk.dart';
import 'package:projek_uas/admin/sidebar/tentang.dart';
import 'package:projek_uas/admin/sidebar/versi.dart';
import 'package:projek_uas/umum/pilih%20user.dart';
import 'package:projek_uas/user/databuku/databuku.dart';
import 'package:qrscan/qrscan.dart';
import 'package:simple_permissions/simple_permissions.dart';


class homeuser extends StatefulWidget {
  @override 
  _homeuserState createState() => _homeuserState();
}

class _homeuserState extends State<homeuser> {

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
               margin: EdgeInsets.only(left: 120, right: 120),
               child: Image.asset("assets/image/logo.png")
            ),

            Text(
              data,
              style: TextStyle(
                  fontSize: 20, color: Colors.white, fontFamily: 'SegoeUIBold'),
              textAlign: TextAlign.center,
            ),

            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[


                  Padding(padding: EdgeInsets.only(left: 10, right: 10),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10, right: 2),
                        child: Text('Scan QR',
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

                  Padding(padding: EdgeInsets.only(right: 10),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10, right: 2),
                        child: Text('Data Buku',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'CalibriLight',
                                color: Colors.white)),
                      ),
                      color: Color.fromRGBO(1, 129, 239, 1),
                      onPressed: () {
                            Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)
                            => databukuuser(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
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
              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)
              => petunjuk(),
              ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('Tentang Kami'),
            onTap: (){
              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)
              => tentang(),
              ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.stacked_line_chart_outlined),
            title: Text('Versi Aplikasi'),
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)
              => versi(),
              ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => new pilihuser()),
                  (Route<dynamic> route) => false);
            }),
        ],
      ),
    );
  }
}
