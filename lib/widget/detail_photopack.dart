import 'package:flutter/material.dart';
import 'package:test_world/models/photopackmodels.dart';
import 'package:carousel_pro/carousel_pro.dart';

// ignore: camel_case_types
class Detail_Photopack extends StatefulWidget {
  final Destination destination;

  Detail_Photopack({
    this.destination,
  });
  @override
  _Detail_PhotopackState createState() => _Detail_PhotopackState();
}

// ignore: camel_case_types
class _Detail_PhotopackState extends State<Detail_Photopack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0)
                      ]),
                  child: Carousel(
                    boxFit: BoxFit.cover,
                    images: [
                      ExactAssetImage(widget.destination.imageUrl),
                      AssetImage('images/minatwicelight.jpg'),
                      AssetImage('images/jihyokbs.jpg'),
                      AssetImage('images/tzuyukbs.jpg'),
                      AssetImage('images/momkbs.jpg'),
                    ],
                    autoplay: false,
                  )),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Colors.black87,
                      iconSize: 35,
                      onPressed: () => Navigator.pop(context),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
