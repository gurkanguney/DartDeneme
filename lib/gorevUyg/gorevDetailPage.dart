import 'package:flutter/material.dart';
import 'package:libdeneme/dao/gorev.dart';

class GorevDetayPage extends StatelessWidget {
  final Gorev gosterilen;

  GorevDetayPage({Key key, @required this.gosterilen}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text(gosterilen.baslik),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(gosterilen.aciklama),
      ),
    );
  }
}