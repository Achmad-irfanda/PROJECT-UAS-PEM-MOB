import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projek_uas/admin/login/login.dart';
import 'package:projek_uas/user/home.dart';

class pilihuser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color.fromRGBO(24, 29, 93, 1),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 70, right: 70, top: 90, bottom: 80),
                child: Image.asset("assets/image/logo.png")),
             
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Text(
                  'Masuk Sebagai',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 35,
                    fontFamily: 'CalibriBold',
                    color: Colors.white,
                  ),
                ),
              ),

               //Button navigator untuk login admin
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(left: 2, right: 2,),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 36, right: 36, top: 8, bottom:8),
                  child: Text('Admin', style: TextStyle(fontSize: 25, color: Colors.white)),
                ),
                 color: Color.fromRGBO(24, 29, 93, 1),
                onPressed: () {
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)
                   => Mylog(),
                  ),
                  );
                }, 
              ),
              decoration: BoxDecoration(
                color: Color.fromRGBO(1, 129, 239, 1),
                borderRadius: BorderRadius.all(
                  Radius.elliptical(10.0, 10.0),
                ),
              ),
            ),

            // button untuk masuk user 
              Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(left: 2, right: 2,),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 42, right: 44, top: 8, bottom:8),
                  child: Text('User', style: TextStyle(fontSize: 25, color: Colors.white)),
                ),
                 color: Color.fromRGBO(24, 29, 93, 1),
                onPressed: () {
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)
                   => homeuser(),
                  ),
                  );
                },
              ),
              decoration: BoxDecoration(
                color: Color.fromRGBO(1, 129, 239, 1),
                borderRadius: BorderRadius.all(
                  Radius.elliptical(10.0, 10.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
