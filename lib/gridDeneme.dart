import 'package:flutter/material.dart';

class GridDeneme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View denemesi"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: 
          List.generate(20, (index){
            return Center(
              child: Text("Item $index", style: Theme.of(context).textTheme.headline,),
            );
          })
          
      ),
    );
  }
}