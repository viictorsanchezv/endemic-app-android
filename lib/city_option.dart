import 'package:flutter/material.dart';



class DropdownCity extends StatefulWidget {
  const DropdownCity({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DropdownCity();
  }
}

class _DropdownCity extends State<DropdownCity> {

  // Initial Selected Value
  String dropdownvalue = 'San Cristobal';

  // List of items in our dropdown menu
  var items = [
    'San Cristobal',
    'San Antonio',
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          margin: EdgeInsets.only(
              top: 320.0
          ),
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DropdownButton <String> (

                // Initial Value
                value: dropdownvalue,
                isExpanded: true,
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ],
          )
      ),
    );
  }
}