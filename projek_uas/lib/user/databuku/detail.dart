import 'package:flutter/material.dart';

class Detailbukuuser extends StatefulWidget {
  List list;
  int index;
  Detailbukuuser({this.index, this.list});

  @override
  _DetailbukuuserState createState() => _DetailbukuuserState();
}

class _DetailbukuuserState extends State<Detailbukuuser> {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Color.fromRGBO(24, 29, 93, 1),
        centerTitle: true,
        title: Text(
          'Detail Data Buku',
          style: TextStyle(fontSize: 26, fontFamily: 'ArialBlack'),
        ),
      ),
      body: new Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(24, 29, 93, 1),
        child: Container(
          margin: EdgeInsets.only(top: 50),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 50.0, left: 30, right: 30, bottom: 200),
            child: Card(
              child: Center(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 26, 
                        right: 26,
                        top: 20,
                      ),
                      child: Image.asset("assets/image/book.png",
                          width: 130, height: 90, fit: BoxFit.fill),
                    ),
                    
                     new Text(widget.list[widget.index]['judul'],
                        style: TextStyle(
                          fontFamily: 'CalibriBold',
                          fontSize: 30,
                          color: Colors.blue[800],
                        ), textAlign: TextAlign.center),
                    new Text(
                      "pengarang: ${widget.list[widget.index]['pengarang']}",
                      style: new TextStyle(fontSize: 18),
                    ),
                    new Text(
                      "tahun: ${widget.list[widget.index]['tahun']}",
                      style: new TextStyle(fontSize: 18),
                    ),
                    new Text(
                      "jumlah: ${widget.list[widget.index]['jumlah']}",
                      style: new TextStyle(fontSize: 18),
                    ),
                    new Text(
                      "rak: ${widget.list[widget.index]['rak']}",
                      style: new TextStyle(fontSize: 18),
                    ),
                    new Padding(padding: EdgeInsets.only(top: 30)),
                  ],
                ),
              ),
            ),
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
