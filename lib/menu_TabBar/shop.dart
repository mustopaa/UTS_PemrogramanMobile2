import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

void main(){
  runApp(new MaterialApp(
    title: "List Product",
    home: new Shop(),
  ));
}

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: new Text("List Product"),
      ),

      body: new ListView(
        children: <Widget>[
          new ListProduct(gambar: 'images/terong.jpg', judul: 'TERONG',),
          new ListProduct(gambar: 'images/jeruk.jpg', judul: 'JERUK', ),
          new ListProduct(gambar: 'images/paprika.jpg', judul: 'PAPRIKA',),
          new ListProduct(gambar: 'images/semangka.jpg', judul: 'SEMANGKA',),
          new ListProduct(gambar: 'images/tomat.jpg', judul: 'TOMAT',),
          new ListProduct(gambar: 'images/wortel.jpg', judul: 'WORTEL',)
        ],
      ),
    );
  }
}

class ListProduct extends StatelessWidget {
  const ListProduct({super.key, required this.gambar, required this.judul,});

  final String gambar;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Center(
              child: new Column(
                children: [
                 Image.asset(gambar, width: 200.0, height: 200.0,
                 ),
                 Text(judul, style: new TextStyle(fontSize: 20.0),)
                ],
              ),
            ),
          );
  }
}
