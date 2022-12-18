import 'package:flutter/material.dart';

import 'disease_list.dart';
import 'header_appbar.dart';
import 'disease_title.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget> [
        ListView(
          children: <Widget> [
            NewsTitle(),
            DiseaseList(),
          ],
        ),
        HeaderAppBar(),

      ],

    );
  }

}