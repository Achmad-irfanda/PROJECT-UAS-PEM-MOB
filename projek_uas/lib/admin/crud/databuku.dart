import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:projek_uas/admin/crud/detail.dart';

class databuku extends StatefulWidget {  
  @override
  _databukuState createState() => _databukuState();
}

class _databukuState extends State<databuku> {
  Future<List> getData() async {
    final response = await http.get("http://10.0.2.2/uasmobile/get_data.php");
    return json.decode(response.body);
  }
 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          backgroundColor: Color.fromRGBO(24, 29, 93, 1),
          centerTitle: true,
          title: Text(
          'Data Buku',
          style: TextStyle(fontSize: 26, fontFamily: 'ArialBlack'),
          ),
          ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(24, 29, 93, 1),
        child: Container(
           margin: EdgeInsets.only(top: 50),
          child: Padding(
            padding: const EdgeInsets.only(left:18.0, right: 18, top: 20, bottom: 40),
            child: new FutureBuilder<List>(
              future: getData(),
              builder: (context, snapshot) {
                if (snapshot.hasError) print(snapshot.error); 

                return snapshot.hasData
                    ? new ItemList(list: snapshot.data)
                    : new Center(
                        child: new CircularProgressIndicator(),
                      );
              },
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


class ItemList extends StatelessWidget {
  final List list;
  ItemList({this.list});
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        return Container(
          padding: EdgeInsets.only(top: 8),
          child: new GestureDetector(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext Context) =>
                    new Detailbuku(list: list, index: i))),
            child: new Card(
              child: new ListTile(
                title: new Text(list[i]['judul'], style: TextStyle(fontFamily: 'CalibriBold', fontSize: 20),),
                leading: Icon(Icons.book_outlined, size: 37,),
                // new Icon(Icons.book, size: 30,),
                subtitle: new Text("Pengarang: ${list[i]['pengarang']}", style: TextStyle(fontFamily: 'SegoeUIBold')),
              ),
            ),
          ),
        );
      },
    );
  }
}
