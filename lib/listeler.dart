import 'package:flutter/material.dart';
class Listeler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Test"),
      ),
      body:  ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text("Map"),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text("Albüm"),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text("Phone"),
          )

        ],
      ),
    );
  }
}