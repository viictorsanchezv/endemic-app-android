import 'package:flutter/material.dart';

import 'form_doctor.dart';
import 'form_users.dart';

// Class
class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _UserList();;
  }
}

class _UserList extends State<UserList> {

  @override
  Widget build(BuildContext context) {


    final personal_assistance = Container(
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
                          'assets/img/headache.png'
                      )
                  )
                ],
              ),
            ),
            title: const Text(
              'Solicitud asistencia medica',
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FormUser()));
              });
            },
          ),
        ),
      );

    final form_doctor = Container(
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
                            'assets/img/headache.png'
                        )
                    )
                  ],
                ),
              ),
              title: const Text(
                'Registro para medicos',
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FormDoctor()));
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
          personal_assistance,
          form_doctor
        ],
      ),
    );
  }
}