import 'package:flutter/material.dart';
import 'dart:math' as matematik;

class CollapsableToolbarOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          //title: Text("Sliver App Bar"),
          backgroundColor: Colors.red,
          expandedHeight: 500,
          floating: false,
          pinned: true,
          snap: false,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Sliver App Bar"),
            centerTitle: true,
            background: Image.asset(
              "assets/images/logo.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(4),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              SabitListeElemanlari(),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              _dinamikElemanUretenFonksiyon, childCount: 6,
            ),
          ),
        ),

        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          delegate: SliverChildListDelegate(SabitListeElemanlari()),
        ),

        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          delegate: SliverChildBuilderDelegate(
            _dinamikElemanUretenFonksiyon, childCount: 6,
          ),
        ),

        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150),
          delegate: SliverChildBuilderDelegate(
            _dinamikElemanUretenFonksiyon, childCount: 10,
          ),
        ),

        SliverGrid.count(crossAxisCount: 6, children: SabitListeElemanlari()),
        SliverGrid.extent(maxCrossAxisExtent: 300, children: SabitListeElemanlari()),

        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverFixedExtentList(delegate: SliverChildListDelegate(
            SabitListeElemanlari(),
          ), itemExtent: 300,),
        ),

        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverFixedExtentList(delegate: SliverChildBuilderDelegate(
            _dinamikElemanUretenFonksiyon, childCount: 6,
          ),itemExtent: 100,),
        ),
      ],
    );
  }

  List<Widget> SabitListeElemanlari() {
    return [
      Container(
        height: 300,
        color: Colors.amber,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 300,
        color: Colors.teal,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 2",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 300,
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 3",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 300,
        color: Colors.orange,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 4",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 300,
        color: Colors.purple,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 5",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 300,
        color: Colors.cyan,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 6",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }



  Widget _dinamikElemanUretenFonksiyon(BuildContext context, int index) {
    return Container(
      height: 300,
      color: rasgeleRenkUret(),
      alignment: Alignment.center,
      child: Text(
        "Sabit Liste Elemanı 6",
        style: TextStyle(fontSize: 16),
        textAlign: TextAlign.center,
      ),
    );
  }

  Color rasgeleRenkUret() {
    return Color.fromARGB(matematik.Random().nextInt(255), matematik.Random().nextInt(255), matematik.Random().nextInt(255), matematik.Random().nextInt(255));
  }
}
