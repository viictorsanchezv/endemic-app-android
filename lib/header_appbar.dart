import 'package:flutter/material.dart';
import 'hero.dart';
import 'hero_image.dart';

class HeaderAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
          HeroSection("Enfermedades Endemicas", 220.0, -0.7,-0.5),
          HeroImage("assets/img/drcorona.png",80.0,0.0)
      ],
    );
  }


}