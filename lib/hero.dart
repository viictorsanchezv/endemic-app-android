import 'package:flutter/material.dart';
import 'hero_image.dart';


class HeroSection extends StatelessWidget{
  String title = "Enfermedades Endemicas";
  double heightBanner = 140.0;
  double topTitlePosition = -0.70;
  double leftTitlePosition = -0.50;
  @override

  HeroSection(this.title, this.heightBanner, this.topTitlePosition, this.leftTitlePosition);
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: heightBanner,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1)
          ],
          begin: FractionalOffset(0.2,0.0),
          end: FractionalOffset(1.0,0.6),
          stops: [0.0,0.6],
          tileMode: TileMode.clamp
        )
      ),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold
        ),
      ),
      alignment: Alignment(topTitlePosition,leftTitlePosition),
    );
  }



}