import 'package:flutter/material.dart';

import 'new_data_model.dart';


class Disease extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Informacion - Dengue'),
          backgroundColor: Color(0xFF4268D3),
        ),
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.only(
              top: 30.0
          ),
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              Image.asset(
                'assets/img/fever.png',
                width: 85,
                height: 81,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Enfermedad endemica producida por la picadura de un mosquito.',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Causa: Picadura de Mosquito	Picadura del mosquito ya infectado',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Tratamiento: Acetaminofen	Tomar Acetaminofen cada 8 hrs',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Sintomas: Dolor de cabeza	Fuertes y prolongados dolores de cabeza',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                )
              )
            ],
          ),
        )
    );
  }
}