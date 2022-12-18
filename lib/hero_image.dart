import 'package:flutter/material.dart';

class HeroImage extends StatelessWidget{

  String pathHeroImage = "assets/img/wear_mask.png";
  double topImagePosition = 80.0;
  double leftImagePosition = 0.0;
  HeroImage(this.pathHeroImage, this.topImagePosition, this.leftImagePosition);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final image = Container(
      height: 140.0,
      width: 200.0,
      margin: EdgeInsets.only(
        top: topImagePosition,
        left: leftImagePosition
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
            image: AssetImage(pathHeroImage),
        )
      ),
    );
    return image;
  }



}