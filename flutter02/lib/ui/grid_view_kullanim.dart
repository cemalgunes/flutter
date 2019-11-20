import 'package:flutter/material.dart';

class GridVieweOrnek extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 100,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4 ),
      itemBuilder: (BuildContext context, int index){
        return Container(
          margin: EdgeInsets.all(20),
          alignment: Alignment.center,
          color: Colors.teal[100*(index%9)],
          child: Text("Merhaba Flutter", textAlign: TextAlign.center,),
        );
      },
    );

  }
  
}

/*
* GridView.extent(
      maxCrossAxisExtent: 500,
      //scrollDirection: Axis.horizontal,
      //reverse: true,
      primary: false,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter", textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba Flutter", textAlign: TextAlign.center,),
        ),
      ],
    );
* */
     