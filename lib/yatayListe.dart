import 'package:flutter/material.dart';
class YatayListe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizantal List"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160.0,
              color: Colors.red,
            ),
            Container(
              width: 100.0,
              color: Colors.green,
            ),
             Container(
              width: 180.0,
              color: Colors.amber,
            ),
            Container(
              width: 120.0,
              color: Colors.black,
              
            ),
             Container(
              width: 160.0,
              color: Colors.red,
            ),
            Container(
              width: 100.0,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}