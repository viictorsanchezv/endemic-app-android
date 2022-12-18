import 'package:app/disease.dart';
import 'package:app/propagation_option.dart';
import 'package:flutter/material.dart';

import 'cases_per_state.dart';

class DiseaseItems extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DiseaseItems();
  }

}

class _DiseaseItems extends State<DiseaseItems>{
  @override

  Widget build(BuildContext context) {
    // TODO: implement build

    final propagation = Container(
      height: 80.0,
      child: Card(
        margin: EdgeInsets.only(
            top:  15.0,
            left: 20.0,
            right: 20.0
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
        ),
        elevation: 6,
        shadowColor: Colors.black54,
        child: ListTile(
          leading: Container(
            margin: EdgeInsets.only(
                top: 10.0
            ),
            child:  Stack(
              children: const <Widget>[
                Image(
                    image: AssetImage(
                        'assets/img/propagation.png'
                    )
                )
              ],
            ),
          ),
          title: const Text(
            'Propagacion',
            style: TextStyle(
                fontSize: 19.0,
                color: Colors.black,
                fontFamily: 'Lato'
            ),
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
          selected: true,
          onTap: () {
            setState(() {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PropagationOption()));
            });
          },
        ),
      ),
    );

    final cases_per_state = Container(
      height: 80.0,
      child: Card(
        margin: EdgeInsets.only(
            top:  15.0,
            left: 20.0,
            right: 20.0
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
        ),
        elevation: 6,
        shadowColor: Colors.black54,
        child: ListTile(
          leading: Container(
            margin: EdgeInsets.only(
                top: 10.0
            ),
            child:  Stack(
              children: const <Widget>[
                Image(
                    image: AssetImage(
                        'assets/img/cases-per-state.png'
                    )
                )
              ],
            ),
          ),
          title: const Text(
            'Casos por estado',
            style: TextStyle(
                fontSize: 19.0,
                color: Colors.black,
                fontFamily: 'Lato'
            ),
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
          selected: true,
          onTap: () {
            setState(() {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> CasesState()));
            });
          },
        ),
      ),
    );

    final information = Container(
      height: 80.0,
      child: Card(
        margin: EdgeInsets.only(
            top:  15.0,
            left: 20.0,
            right: 20.0
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
        ),
        elevation: 6,
        shadowColor: Colors.black54,
        child: ListTile(
          leading: Container(
            margin: EdgeInsets.only(
                top: 10.0
            ),
            child:  Stack(
              children: const <Widget>[
                Image(
                    image: AssetImage(
                        'assets/img/news-icon.png'
                    )
                )
              ],
            ),
          ),
          title: const Text(
            'Informacion',
            style: TextStyle(
                fontSize: 19.0,
                color: Colors.black,
                fontFamily: 'Lato'
            ),
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
          selected: true,
          onTap: () {
            setState(() {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Disease()));
            });
          },
        ),
      ),
    );

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          propagation,
          cases_per_state,
          information
        ],
      ),
    );
  }

}