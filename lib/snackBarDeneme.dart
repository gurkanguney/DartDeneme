import 'package:flutter/material.dart';

class SnackDenemeSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Snackbar deneme"),
        ),
        body: new Builder(
          builder: (BuildContext context) {
            return new Center(
              child: RaisedButton(
                onPressed: () {
                  final snack = SnackBar(
                    content: Text("Snackbar görüntüle"),
                    action: SnackBarAction(
                      label: "Geri Al",
                      onPressed: () {},
                    ),
                  );
                  Scaffold.of(context).showSnackBar(snack);
                },
                child: Text("Göster"),
              ),
            );
          },
        ));
  }
}
