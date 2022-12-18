import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'new_data_model.dart';
import 'new_detail.dart';
import 'dart:async';
import 'dart:convert';

class NewsList extends StatelessWidget{

  static List<String> newList =['Lorem ipsum dolor atmet','Lorem ipsum dolor atmet','Lorem ipsum dolor atmet','Lorem ipsum dolor atmet','Lorem ipsum dolor atmet','Lorem ipsum dolor atmet','Lorem ipsum dolor atmet','Lorem ipsum dolor atmet','Lorem ipsum dolor atmet','Lorem ipsum dolor atmet','Lorem ipsum dolor atmet','Lorem ipsum dolor atmet','Lorem ipsum dolor atmet','Lorem ipsum dolor atmet','Lorem ipsum dolor atmet'];

  static List url = [
    'assets/img/news-icon.png',
    'assets/img/news-icon.png',
    'assets/img/news-icon.png',
    'assets/img/news-icon.png',
    'assets/img/news-icon.png',
    'assets/img/news-icon.png',
    'assets/img/news-icon.png',
    'assets/img/news-icon.png',
    'assets/img/news-icon.png',
    'assets/img/news-icon.png',
    'assets/img/news-icon.png',
    'assets/img/news-icon.png',
    'assets/img/news-icon.png',
    'assets/img/news-icon.png',
    'assets/img/news-icon.png',
  ];

  final List<NewDataModel> Newdata = List.generate(
      newList.length,
          (index)
      => NewDataModel('${newList[index]}', '${url[index]}','Descripcion...')

  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        padding: EdgeInsets.only(top: 140.0),
        itemCount: Newdata.length,
        itemBuilder: (context,index){
          return Card(
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
              title: Text(Newdata[index].name),
              subtitle: Text(Newdata[index].desc),
              leading: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset(
                  Newdata[index].ImageUrl,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NewDetail(newDataModel: Newdata[index],)));


              },
            ),
          );
        }
    );
  }


}