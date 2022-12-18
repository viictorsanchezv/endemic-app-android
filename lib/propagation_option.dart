import 'package:app/disease.dart';
import 'package:app/state_option.dart';
import 'package:flutter/material.dart';

import 'cases_per_state.dart';
import 'city_option.dart';
import 'go_button.dart';
import 'hero.dart';
import 'hero_image.dart';

class PropagationOption extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PropagationOption();
  }

}

class _PropagationOption extends State<PropagationOption>{
  @override

  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        body: Stack(
          children: <Widget>[
            HeroSection("Seleccione la ciudad", 110.0, -0.8,0.5),
            HeroImage("assets/img/virus.png",10.0,200.0),
            DropdownState(),
            DropdownCity(),
            GoButton()

          ],
        )
    );
  }

}