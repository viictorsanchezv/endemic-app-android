import 'package:flutter/material.dart';


class Propagation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Propagacion'),
          backgroundColor: Color(0xFF4268D3),
        ),
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.only(
              top: 200.0
          ),
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              Image.asset(
                'assets/img/propagation.gif',
                width: 250,
                height: 210,
                fit: BoxFit.cover,
              )
            ],
          ),
        )
    );
  }
}