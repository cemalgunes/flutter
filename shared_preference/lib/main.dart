import 'package:flutter/material.dart';
import 'package:shared_preference/shared_pref_kullanimi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SharedPrefKullanimi(),
    );
  }
}