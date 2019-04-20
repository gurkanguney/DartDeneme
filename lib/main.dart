import 'package:flutter/material.dart';
import 'digerSayfa.dart';
import 'animasyon.dart';
import 'snackBarDeneme.dart';
import 'OrientationDemo.dart';
import 'TabbarDeneme.dart';
import 'Formlar.dart';
import 'listeler.dart';
import 'yatayListe.dart';
import 'gridDeneme.dart';
import "CustomItemList.dart";
import 'package:libdeneme/gorevUyg/gorevlerPage.dart';
import 'package:libdeneme/network/network.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
      
          primarySwatch: Colors.blue,
          accentColor: Colors.amber,
          accentIconTheme: IconThemeData(color: Colors.black),
          buttonColor: Colors.amber,
          appBarTheme: AppBarTheme(
            color: Colors.amber,

            textTheme: TextTheme(
              body1: TextStyle(
                color: Colors.black,

              )
            )
           
          )


        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
        routes: <String, WidgetBuilder>{
          "/ikinciSayfa": (BuildContext context) => new IkinciFlutterSayfa(),
          "/Animasyon": (BuildContext context) => new AnimasyonSayfasi(title: "Animasyon Sayfası",),
          "/Snackbar": (BuildContext context)=> new SnackDenemeSayfasi(),
          "/OrientationDemo": (BuildContext context)=>new OrientationPage(),
          "/Tabbar": (BuildContext context)=>new TabBarDeneme(),
          "/FormDeneme": (BuildContext context)=>new FormWidget(),
          "/Liste":(BuildContext context)=>new Listeler(),
          "/YatayListe":(BuildContext context)=>new YatayListe(),
          "/Grid":(BuildContext context)=>new GridDeneme(),
          "/OzelListe":(BuildContext context)=>new CustomListDeneme(),
          "/Gorevler":(BuildContext context)=>new Gorevler(),
          "/Network":(BuildContext context)=>new NetworkPage()
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  Color renk = Colors.black87;
  double yukseklik = 100;
  double radius_path = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
      if (renk == Colors.red) {
        renk = Colors.black;
        yukseklik = 50;
        radius_path = 0;
      } else {
        renk = Colors.red;
        yukseklik = 100;
        radius_path = 20;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text("Git"),
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).pushNamed("/ikinciSayfa");
              },
            ),
            FlatButton(child: Text("Animasyon Sayfası"), color: Colors.amber,onPressed: (){
              Navigator.of(context).pushNamed("/Animasyon");
            },),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: TextStyle(color: renk, fontSize: 100),
            ),
            AnimatedContainer(
                duration: Duration(seconds: 1),
                height: yukseklik,
                width: 150,
                child: Text(
                  "Gürkan GÜNEY",
                  style: TextStyle(fontSize: 20, color: Colors.amber),
                ),
                curve: Curves.ease,
                decoration: BoxDecoration(
                  color: renk,
                  border:
                      Border(bottom: BorderSide(width: 5, color: Colors.cyan)),
                  borderRadius: BorderRadius.all(Radius.circular(radius_path)),
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
