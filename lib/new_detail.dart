import 'package:flutter/material.dart';

import 'new_data_model.dart';


class NewDetail extends StatelessWidget {
  final NewDataModel newDataModel;

  const NewDetail({Key? key, required this.newDataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(newDataModel.name),
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
              newDataModel.ImageUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
             'Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Cras ultricies ligula sed magna dictum porta. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Curabitur aliquet quam id dui posuere blandit. Vivamus suscipit tortor eget felis porttitor volutpat. Sed porttitor lectus nibh. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
              ),
            )
          ],
        ),
      )
    );
  }
}