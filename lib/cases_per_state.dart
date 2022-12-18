import 'package:flutter/material.dart';


class CasesState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Casos por estado - Dengue'),
          backgroundColor: Color(0xFF4268D3),
        ),
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.only(
              top: 30.0
          ),
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              Text(
                'Cantidad de Casos por Estado',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                '23 Casos reportados',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Image.asset(
                'assets/img/tachira-map.png',
                width: 330,
                fit: BoxFit.cover,
              ),
            ],
          ),
        )
    );
  }
}