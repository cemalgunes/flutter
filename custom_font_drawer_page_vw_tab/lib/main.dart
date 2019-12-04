import 'package:custom_font_drawer_page_vw_tab/ui/custom_font.dart';
import 'package:custom_font_drawer_page_vw_tab/ui/drawer_menu.dart';
import 'package:custom_font_drawer_page_vw_tab/ui/home_page.dart';
import 'package:custom_font_drawer_page_vw_tab/ui/page_view.dart';
import 'package:custom_font_drawer_page_vw_tab/ui/search.dart';
import 'package:custom_font_drawer_page_vw_tab/ui/tab.dart';
import 'package:flutter/material.dart';

void main() => runApp(FlutterDersleri());

class FlutterDersleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Dersleri',
      theme: ThemeData(
          fontFamily: 'Genel',
          primarySwatch: Colors.teal,
          accentColor: Colors.orangeAccent),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() {
    return new MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int secilenMenuItem = 0;
  List<Widget> tumSayfalar;
  HomePage homePage;
  SearchPage searchPage;
  PageViewSample pageViewSample;
  CustomFontPage customFontPage;

  var keyHome = PageStorageKey("key_home");
  var keySearch = PageStorageKey("key_search");

  @override
  void initState() {
    super.initState();
    homePage = HomePage(keyHome);
    searchPage=SearchPage(keySearch);
    pageViewSample = PageViewSample();
    customFontPage= CustomFontPage();
    tumSayfalar=[homePage, searchPage, pageViewSample,customFontPage];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text("Flutter Dersleri Bölüm 2"),
      ),
      body: secilenMenuItem < tumSayfalar.length ? tumSayfalar[secilenMenuItem] : tumSayfalar[0],
      bottomNavigationBar: bottomNavMenu(),
    );
  }

  Theme bottomNavMenu() {
    return Theme(
      data: ThemeData(
          canvasColor: Colors.cyan.shade100,
          primaryColor: Colors.orangeAccent
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("ExpansionTile"),
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              activeIcon: Icon(Icons.call),
              title: Text("Liste"),
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              title: Text("PageView"),
              backgroundColor: Colors.tealAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              title: Text("Profil"),
              backgroundColor: Colors.brown),
          BottomNavigationBarItem(
              icon: Icon(Icons.tab),
              title: Text("Tabs"),
              backgroundColor: Colors.brown),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: secilenMenuItem,
        onTap: (index){
          setState(() {
            secilenMenuItem = index;
            if(index==4){
              Navigator.push(context, MaterialPageRoute(builder: (context) => TabSample()),);
            }
          });
        },
      ),
    );
  }
}