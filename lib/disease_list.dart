import 'package:app/disease_item.dart';
import 'package:flutter/material.dart';
import 'disease_action.dart';

class DiseaseList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DiseaseList();
  }

}
class _DiseaseList extends State<DiseaseList>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final dengue = Container(
      height: 80.0,
      margin: EdgeInsets.only(
          top: 40.0
      ),
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
                        'assets/img/dengue.png'
                    )
                )
              ],
            ),
          ),
          title: const Text(
            'Dengue',
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
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DiseaseAction()));
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
          dengue,
        ],
      ),
    );
  }

}