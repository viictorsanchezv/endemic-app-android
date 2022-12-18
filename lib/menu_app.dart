import 'package:flutter/material.dart';
import 'home_app.dart';
import 'news_page.dart';
import 'user.dart';


class MenuApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MenuApp();
  }


}

class _MenuApp extends State<MenuApp>{
  @override
  int indexTab = 0;

  final List <Widget> widgetsChildren = [

    Home(),
    News(),
    User()
  ];
  void onTapTapped(int index){
    setState(() {
      this.indexTab = index;
    });
  }

  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: widgetsChildren[indexTab],
      bottomNavigationBar: Theme(
        
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.blue
        ),
        child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTab,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.local_hospital),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.newspaper),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  label: ""
              ),
            ]
        ),
      ) ,
    );
  }

}