import "package:flutter/material.dart";

class ResimVeButonTurleri extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Text(
          "Resim ve Buton Türleri",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset("assets/images/logo.jpg"),
                      Text("Asset Image"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.network(
                          "http://balkansoftware.net/images/logo.png"),
                      Text("Network Image"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "http://balkansoftware.net//images/logo.png"),
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.orange,
                        radius: 30,
                      ),
                      Text("Circle Avatar"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

}