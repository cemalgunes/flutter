import 'package:custom_font_drawer_page_vw_tab/models/data_class.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage(Key k) : super(key: k);

  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  List<DataClass> tumDataClassler;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tumDataClassler = [
      DataClass("Misyonumuz", "Biz kimizin içeriği buraya gelecek", false),
      DataClass("Vizyonumuz", "Biz kimizin içeriği buraya gelecek", false),
      DataClass("İletişim", "Biz kimizin içeriği buraya gelecek", false),
      DataClass("İletişim", "Biz kimizin içeriği buraya gelecek", false),
      DataClass("İletişim", "Biz kimizin içeriği buraya gelecek", false),
      DataClass("İletişim", "Biz kimizin içeriği buraya gelecek", false),
      DataClass("İletişim", "Biz kimizin içeriği buraya gelecek", false),
      DataClass("Biz Kimiz", "Biz kimizin içeriği buraya gelecek", false),
      DataClass("Biz Neredeyiz", "Biz neredeyiz içeriği buraya gelecek", false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ExpansionTile(
          key: PageStorageKey("$index"),
          title: Text(tumDataClassler[index].baslik),
          initiallyExpanded: tumDataClassler[index].expanded,
          children: <Widget>[
            Container(
              color:
              index % 2 == 0 ? Colors.red.shade200 : Colors.yellow.shade300,
              height: 100,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(tumDataClassler[index].icerik),
              ),
            )
          ],
        );
      },
      itemCount: tumDataClassler.length,
    );
  }
}