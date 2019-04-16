import 'package:flutter/material.dart';

class CustomListDeneme extends StatefulWidget {
  @override
  _CustomLisState createState() => _CustomLisState();
}

class _CustomLisState extends State<CustomListDeneme> {
  @override
  Widget build(BuildContext context) {
    
      final elemanlar=List<ListeElemani>.generate(20,
       (i){
        return i%6==0?BaslikListeElemani("Başlık $i"):DetayListeElemani("Gonderen $i","Mesaj Gövdesi $i");
       }

      );

    return Scaffold(
      appBar: AppBar(
        title: Text("Özel Liste"),
      ),
      body: ListView.builder(
        itemCount: elemanlar.length,
        itemBuilder: (context,index){
          final item=elemanlar[index];
          if (item is BaslikListeElemani) {
             return ListTile(
               title: Text(item.baslik, style: Theme.of(context).textTheme.headline,),
              
             );

          }else if(item is DetayListeElemani)
          {
            return ListTile(
              title: Text(item.sender),
              subtitle: Text(item.body),
            );
          }
        },
      ),
    );
  }
}











abstract class ListeElemani {}  // C# Interface karşılığı

class BaslikListeElemani implements ListeElemani{
  final String baslik;
  BaslikListeElemani(this.baslik);
}

class DetayListeElemani implements ListeElemani{
  final String sender,body;
  DetayListeElemani(this.sender,this.body);
}


