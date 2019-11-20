import 'package:flutter/material.dart';

class NavigasyonIslemleri extends StatelessWidget {
  String baslik = "B Sayfası";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Navigasyon İşlemleri",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text(
                "A Sayfasına Git",
              ),
              color: Colors.blue,
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ASayfasi()),
                ),
              },
            ),
            RaisedButton(
              child: Text(
                "B Sayfasına Git ve Veri Gönder",
              ),
              color: Colors.red,
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BSayfasi(baslik)),
                ),
              },
            ),
            RaisedButton(
              child: Text(
                "C Sayfasına Git ve Geri Gel",
              ),
              color: Colors.purple,
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CSayfasi()),
                ),
              },
            ),
            RaisedButton(
              child: Text(
                "D Sayfasına Git Gelirken Veri Getir",
              ),
              color: Colors.pink,
              onPressed: () => {
                Navigator.push<bool>(
                  context,
                  MaterialPageRoute(builder: (context) => DSayfasi()),
                ).then((popOlayindanSonraGelenDeger) {
                  debugPrint(
                      "Pop işleminden gelen değer $popOlayindanSonraGelenDeger");
                }),
              },
            ),
            RaisedButton(
              child: Text(
                "E Sayfasına Git Geri Gelme",
              ),
              color: Colors.pink,
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ESayfasi())),
              },
            ),
            RaisedButton(
              child: Text(
                "Liste Sayfasına Git",
              ),
              color: Colors.pink,
              onPressed: () => {
                Navigator.pushNamed(context, "/ListeSayfasi"),
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ListeDetay extends StatelessWidget {

  int tiklananIndex = 0;
  ListeDetay(this.tiklananIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Liste Detay Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Liste elemanı $tiklananIndex tıklandı"),
        ),
      ),
    );
  }
}

class ListeSinifi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Liste Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: ()=>{
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>ListeDetay(index))),
              Navigator.pushNamed(context, "/detay/$index"),
            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Liste elemanı $index"),
              ),
            ),
          );
        },
        itemCount: 60,
      ),
    );
  }
}

class GSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "G Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "G SAYFASI",
              style: TextStyle(color: Colors.red, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

class FSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "F Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "F SAYFASI",
              style: TextStyle(color: Colors.red, fontSize: 24),
            ),
            RaisedButton(
              child: Text("G Sayfasına Git"),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/GPage');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ESayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "E Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "E SAYFASI",
              style: TextStyle(color: Colors.red, fontSize: 24),
            ),
            RaisedButton(
              child: Text("F Sayfasına Git"),
              onPressed: () {
                Navigator.pushNamed(context, "/FPage");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      onWillPop: () {
        debugPrint("on will pop çalıştı");
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "D Sayfası",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "D SAYFASI",
                style: TextStyle(color: Colors.red, fontSize: 24),
              ),
              RaisedButton(
                child: Text(
                  "Geri Dön ve Veri Gönder",
                ),
                color: Colors.purple,
                onPressed: () => {
                  Navigator.pop<bool>(context, true),
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "C Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "C SAYFASI",
              style: TextStyle(color: Colors.red, fontSize: 24),
            ),
            RaisedButton(
              child: Text(
                "Geri Dön",
              ),
              color: Colors.purple,
              onPressed: () => {
                Navigator.pop(context),
              },
            ),
            RaisedButton(
              child: Text(
                "A Sayfasına Git",
              ),
              color: Colors.purple,
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ASayfasi()),
                ),
              },
            ),
          ],
        ),
      ),
    );
  }
}

class BSayfasi extends StatelessWidget {
  String gelenBaslikVerisi;

  BSayfasi(this.gelenBaslikVerisi);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          gelenBaslikVerisi,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              gelenBaslikVerisi,
              style: TextStyle(color: Colors.red, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

class ASayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "A Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "A SAYFASI",
              style: TextStyle(color: Colors.red, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
