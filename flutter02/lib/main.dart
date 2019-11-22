import "package:flutter/material.dart";
import 'ui/navigasyon_islemleri.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Dersleri",

    //initialRoute: "/CPage/DPage/FPage",

    routes: {
      '/'      : (context)=>NavigasyonIslemleri(),
      '/CPage' : (context)=>CSayfasi(),
      '/DPage' : (context)=>DSayfasi(),
      '/FPage' : (context)=>FSayfasi(),
      '/GPage' : (context)=>GSayfasi(),
      '/CPage/DPage' : (context)=>DSayfasi(),
      '/CPage/DPage/FPage' : (context)=>FSayfasi(),
      '/ListeSayfasi' : (context)=>ListeSinifi(),
    },

    onGenerateRoute: (RouteSettings settings){
      List<String> pathElemanlari = settings.name.split("/");
      if(pathElemanlari[1]=="detay")
        return MaterialPageRoute(builder: (context)=>ListeDetay(int.parse(pathElemanlari[2])));
      else
        return null;
    },

    onUnknownRoute: (RouteSettings settings) => MaterialPageRoute(builder: (context)=> DSayfasi()),

    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    //home: NavigasyonIslemleri(), routes içerisinde '/' elemanı var ise home kullanılmaz
  ));
}

