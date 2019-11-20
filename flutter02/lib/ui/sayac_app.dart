import "package:flutter/material.dart";

class SayacAppp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: "Material App Title",
      home: MyHomePage(title:"My Home Page2"),
    );
  }
}

class MyHomePage extends StatefulWidget{
  final String title;
  int sayac = 0;

  MyHomePage({this.title});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}

class  MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text("${widget.sayac}"),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          setState(() {
            SayacDegeriniArttir();
          });

          debugPrint("FAB tıklandı");
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: <Widget>[
            Text("Butona basılma sayısı"),
            Text(
              "${widget.sayac}",
              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
            ),
          ],

        ),
      ),
    );
  }

  void SayacDegeriniArttir(){
    widget.sayac++;
    debugPrint("Sayaç değeri: ${widget.sayac}");
  }

}