import 'package:flutter/material.dart';

class TabBarDeneme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabs Demo"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.directions_car),
                text: "Araç Seç",
              ),
              Tab(
                icon: Icon(Icons.directions_transit),
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.directions_car, size: 200,) 
          ,
            Icon(Icons.ac_unit, size: 200),
            Icon(Icons.directions_bike, size: 200)
          ],
        ),
      ),
    
    );
  }
}
