import 'package:flutter/material.dart';

class AnimasyonSayfasi extends StatefulWidget {
  final String title;
  AnimasyonSayfasi({Key key, this.title}) : super(key: key);
  @override
  _AnimasyonSayfasiState createState() => _AnimasyonSayfasiState();
}

class _AnimasyonSayfasiState extends State<AnimasyonSayfasi> {
  bool gorunur = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: gorunur ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              layoutBuilder: AnimatedSwitcher.defaultLayoutBuilder,
              child: gorunur ? Text("Açık") : Text("Kapaniyo"),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("Menü Başlık"),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              title: Text("Item1"),
              onTap: () {
                Navigator.of(context).pushNamed("/ikinciSayfa");
              },
            ),
            ListTile(
              title: Text("SnackBar Denemesi"),
              onTap: () {
                Navigator.of(context).pushNamed("/Snackbar");
              },
            ),
            ListTile(
              title: Text("Orientasyon Sayfası"),
              onTap: () {
                Navigator.of(context).pushNamed("/OrientationDemo");
              },
            ),
            ListTile(
                title: Text("Tabbar Sayfası"),
                onTap: () {
                  Navigator.of(context).pushNamed("/Tabbar");
                }),
            ListTile(
                title: Text("Form Sayfası"),
                onTap: () {
                  Navigator.of(context).pushNamed("/FormDeneme");
                }),
            ListTile(
                title: Text("Listeler"),
                onTap: () {
                  Navigator.of(context).pushNamed("/Liste");
                }),
            ListTile(
                title: Text("Yatay Liste"),
                onTap: () {
                  Navigator.of(context).pushNamed("/YatayListe");
                }),
            ListTile(
                title: Text("Grid Liste"),
                onTap: () {
                  Navigator.of(context).pushNamed("/Grid");
                }),
            ListTile(
                title: Text("Özel Liste"),
                onTap: () {
                  Navigator.of(context).pushNamed("/OzelListe");
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            gorunur = !gorunur;
          });
        },
        tooltip: "Toggle Opa",
        child: Icon(Icons.flight),
      ),
    );
  }
}
