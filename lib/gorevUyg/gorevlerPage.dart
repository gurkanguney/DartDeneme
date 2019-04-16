import 'package:flutter/material.dart';
import "package:libdeneme/dao/gorev.dart";
import 'package:libdeneme/gorevUyg/gorevDetailPage.dart';

class Gorevler extends StatelessWidget {

 final List<Gorev> gorevler=List.generate(20, 
  (i){
    return Gorev("$i. Görev", "$i görev Açıklaması");
  }
 );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Görev Listesi"),
      ),
      body: ListView.builder(
        itemCount: gorevler.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(gorevler[index].baslik),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=>GorevDetayPage(gosterilen: gorevler[index],)
              ));
            },
          );
        },
      ),
    );
  }
}