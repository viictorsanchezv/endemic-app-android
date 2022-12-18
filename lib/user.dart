import 'package:app/user_list.dart';
import 'package:flutter/material.dart';
import 'hero.dart';
import 'hero_image.dart';

class User extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        HeroSection("Personas", 120.0, -0.7,0.2),
        HeroImage("assets/img/virus.png",10.0,200.0),
        UserList(),
      ],
    );
  }


}