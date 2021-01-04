import 'package:flutter/material.dart';
import 'package:projek_uas/umum/pilih%20user.dart';

class welcome extends StatelessWidget {
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
                margin: EdgeInsets.only(left: 70, right: 70, top: 60),
                child: Image.asset("assets/image/logo.png")),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60, bottom: 28),
                    child: Text(
                      'Selamat Datang!',
                      style: TextStyle(
                          fontSize: 36,
                          fontFamily: 'ArialBold',
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 18, right: 18, bottom: 12),
                    child: Text(
                      'Scan Book, aplikasi scanner untuk melihat detail buku. ',
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'CalibriLight',
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 150, left: 320),
                    child: FlatButton(
                      child: Row(
                        children: [
                          Text(
                            'Next ',
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'CalibriLight',
                                color: Colors.white),
                            textAlign: TextAlign.right,
                          ),
                          Icon(
                            Icons.arrow_forward_outlined,
                            size: 23,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          new MaterialPageRoute(
                            builder: (BuildContext context) => pilihuser(),
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
