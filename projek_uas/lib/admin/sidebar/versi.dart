import 'package:flutter/material.dart';

class versi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(24, 29, 93, 1),
        centerTitle: true,
        title: Text(
          'Versi Aplikasi',
          style: TextStyle(fontSize: 26, fontFamily: 'ArialBlack'),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(24, 29, 93, 1),
        child: Container(
          margin: EdgeInsets.only(top: 50,),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Image.asset(
                  "assets/image/andro.png",
                  width: 100,
                  height: 100,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Text(
                  "versi 1.0.0+1",
                  style: TextStyle(
                      color: Colors.grey, fontSize: 26, fontFamily: 'Arialn'),
                ),
              )
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
