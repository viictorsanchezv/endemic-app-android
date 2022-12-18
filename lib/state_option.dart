import 'package:flutter/material.dart';



class DropdownState extends StatefulWidget {
  const DropdownState({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DropdownState();
  }
}

class _DropdownState extends State<DropdownState> {

  // Initial Selected Value
  String dropdownvalue = 'Tachira';

  // List of items in our dropdown menu
  var items = [
    'Tachira',
    'Caracas',
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          margin: EdgeInsets.only(
            top: 220.0
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