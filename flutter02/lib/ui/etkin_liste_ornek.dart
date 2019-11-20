import 'package:flutter/material.dart';

class EtkinListeOrnek extends StatelessWidget {
  List<Ogrenci> tumOgrenciler = [];

  @override
  Widget build(BuildContext context) {
    OgrenciVerileriniGetir();

    return ListView.separated(
        separatorBuilder: (context, index) {
          if (index % 4 == 0 && index != 0) {
            return Container(
              height: 2,
              color: Colors.blue,
              margin: EdgeInsets.all(40),
            );
          } else {
            return Container();
          }
        },
        itemCount: 2000,
        itemBuilder: (context, index) {
          return Card(
            color:
                index % 2 == 0 ? Colors.red.shade200 : Colors.orange.shade200,
            elevation: 4,
            child: ListTile(
              leading: Icon(Icons.perm_contact_calendar),
              title: Text(tumOgrenciler[index]._Ad),
              subtitle: Text(tumOgrenciler[index]._Aciklama),
              trailing: Icon(Icons.add),
            ),
          );
        });
  }

  void OgrenciVerileriniGetir() {
    tumOgrenciler = List.generate(
        300,
        (index) => Ogrenci("Ogrenci $index adı", "Ogrenci $index soyadı",
            index % 2 == 0 ? true : false));
  }
}

class Ogrenci {
  String _Ad;
  String _Aciklama;
  bool _Cinsiyet;

  Ogrenci(this._Ad, this._Aciklama, this._Cinsiyet);

  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }
}
