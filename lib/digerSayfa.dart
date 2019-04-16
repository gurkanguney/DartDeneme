import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class IkinciFlutterSayfa extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: new AppBar(
          title: new Text("ikinci Sayfa"), backgroundColor: Colors.amber),
      body: new Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[buildIconButton(context), Text("Anasayfa")],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (int index){
          Fluttertoast.showToast(msg: "Seçilen incdex $index",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
          timeInSecForIos: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16);
          Navigator.pop(context);
         
        },
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.perm_contact_calendar),
            title: new Text("Personel")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text("Soğutma"),
            
          ),
          BottomNavigationBarItem(icon: Icon(Icons.access_alarms), title: Text("Zaman"))
        ],
      ),
    );
  }


  IconButton buildIconButton(BuildContext context) {
    return new IconButton(
      icon: new Icon(Icons.home, color: Colors.redAccent),
      iconSize: 70,
      onPressed: () {
        
        Navigator.pop(context);
      },
    );
  }
}
