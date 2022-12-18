import 'package:flutter/material.dart';

class NewsTitle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final title = Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              top: 220.0,
              left: 20.0
            ),
          child: Text(
            "Principales Enfermedades",
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0XFF56575a)
                ),
          ),
          alignment: Alignment.centerLeft,
        ),
      ],
    );
    return title;
  }


}
