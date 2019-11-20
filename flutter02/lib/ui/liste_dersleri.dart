import "package:flutter/material.dart";

class ListeDersleri extends StatelessWidget {

  //Liste için veri kaynağı oluştur
  List<int> listeNumaralari = List.generate(300, (index) => index);
  List<String> listeAltBalik = List.generate(300, (index)=>"Liste elemanı alt başlık $index");

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: listeNumaralari.map((index) =>
          Column(
            children: <Widget>[
              Container(
                child: Card(
                  color: Colors.teal.shade100,
                  margin: EdgeInsets.all(10),
                  elevation: 10,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.android),
                      radius: 2,
                    ),
                    title: Text("Liste elemanı başlık $index"),
                    subtitle: Text(listeAltBalik[index]),
                    trailing: Icon(Icons.add_circle),
                  ),
                ),
              ),
              Divider(
                color: Colors.orange,
                height: 32,
                indent: 20,
              ),
            ],
          ),
      ).toList(),
    );
  }
}

/*
Column(
children:
<Widget>[
            Container(
              child: Card(
                color: Colors.teal.shade100,
                margin: EdgeInsets.all(10),
                elevation: 10,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.android),
                    radius: 2,
                  ),
                  title: Text("Liste elemanı başlık"),
                  subtitle: Text("Liste elemanı alt başlık"),
                  trailing: Icon(Icons.add_circle),
                ),
              ),
            ),
            Divider(
              color: Colors.orange,
              height: 32,
              indent: 20,
            ),
          ],
          ),
 */