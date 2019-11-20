import "package:flutter/material.dart";

class RowAndColumn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Text(
                "D",
                style: TextStyle(fontSize: 20),
              ),
              color: Colors.red.shade100,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(2),
            ),
            Container(
              child: Text(
                "A",
                style: TextStyle(fontSize: 20),
              ),
              color: Colors.red.shade200,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(2),
            ),
            Container(
              child: Text(
                "R",
                style: TextStyle(fontSize: 20),
              ),
              color: Colors.red.shade300,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(2),
            ),
            Container(
              child: Text(
                "T",
                style: TextStyle(fontSize: 20),
              ),
              color: Colors.red.shade400,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(2),
            ),
          ],
        ),
        Container(
          child: Text(
            "E",
            style: TextStyle(fontSize: 20),
          ),
          color: Colors.red.shade200,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(2),
        ),
        Container(
          child: Text(
            "R",
            style: TextStyle(fontSize: 20),
          ),
          color: Colors.red.shade300,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(2),
        ),
        Container(
          child: Text(
            "S",
            style: TextStyle(fontSize: 20),
          ),
          color: Colors.red.shade400,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(2),
        ),
        Container(
          child: Text(
            "L",
            style: TextStyle(fontSize: 20),
          ),
          color: Colors.red.shade500,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(2),
        ),
        Container(
          child: Text(
            "E",
            style: TextStyle(fontSize: 20),
          ),
          color: Colors.red.shade600,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(2),
        ),
        Container(
          child: Text(
            "R",
            style: TextStyle(fontSize: 20),
          ),
          color: Colors.red.shade700,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(2),
        ),
        Container(
          child: Text(
            "I",
            style: TextStyle(fontSize: 20),
          ),
          color: Colors.red.shade800,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(2),
        ),
      ],
    );
  }

}

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Flutter Dersleri",
          style: new TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          debugPrint("FAB tıklandı");
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Container(
        child: RowAndColumn()
      ),
    ),
  ));
}
