
import 'package:flutter/material.dart';
import 'disease_item.dart';
import 'hero.dart';
import 'hero_image.dart';


class DiseaseAction extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: Stack(
        children: <Widget>[
          HeroSection("Dengue", 120.0, -0.7,0.2),
          HeroImage("assets/img/virus.png",10.0,200.0),
          DiseaseItems(),
        ],
      )
    );

  }

}