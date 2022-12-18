
import 'package:flutter/material.dart';
import 'hero.dart';
import 'hero_image.dart';
import 'news_list.dart';

class News extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        NewsList(),
        HeroSection("Noticias", 120.0, -0.7,0.2),
        HeroImage("assets/img/virus.png",10.0,200.0),
      ],
    );
  }

}