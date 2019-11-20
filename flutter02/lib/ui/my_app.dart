import "package:flutter/material.dart";
import 'resim_ve_buton_turleri.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
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
          body: ResimVeButonTurleri()
      ),
    );
  }
}