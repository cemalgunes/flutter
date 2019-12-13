import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider_package_kullanimi.dart';
import 'package:state_management/sayac.dart';
import 'package:state_management/user_repository.dart';
import 'firebaseauth_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Sayac>(
          builder: (context) => Sayac(0),
        ),
        ChangeNotifierProvider<UserRepository>(
          builder: (context) => UserRepository(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }

/*@override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Sayac>(
      builder: (context) => Sayac(1),
      child: ChangeNotifierProvider<UserRepository>(
        builder: (context)=>UserRepository(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyHomePage(title: 'Flutter Demo Home Page'),
        ),
      ),
    );
  }*/
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProviderPackageKullanimi()));
              },
              child: Text("Provider Package"),
              color: Colors.blue,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProviderwithFirebaseAuth()));
              },
              child: Text("Provider Package FirebaseAuth"),
              color: Colors.pink,
            ),
            /*
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => StreamKullanimi()));
              },
              child: Text("Stream Kullanımı"),
              color: Colors.yellow,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BlocKullanimi()));
              },
              child: Text("Bloc Kullanımı"),
              color: Colors.green,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FlutterBlocPaketKullanimi()));
              },
              child: Text("Flutter_Bloc Paket Kullanımı"),
              color: Colors.teal,
            ),*/
          ],
        ),
      ),
      floatingActionButton: MyButton(_incrementCounter),
    );
  }
}

class MyButton extends StatefulWidget {
  Function incrementCounter;

  MyButton(this.incrementCounter);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: widget.incrementCounter,
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }
}