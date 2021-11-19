import 'dart:ui';

import 'package:flutter/material.dart';

class WidgetDropDown extends StatefulWidget {
  @override
  _WidgetDropDownState createState() => _WidgetDropDownState();
}

class _WidgetDropDownState extends State<WidgetDropDown> {
  // mencatat apa yang dipilih
  Person selectedPersons;

  List<Person> persons = [Person('sidik'), Person('subhan')];

  //mengenerate data person mengembalikan nilai tergantung apa yang di generate
  List<DropdownMenuItem> generateItems(List<Person> persons) {
    List<DropdownMenuItem> items = [];
    for (var item in persons) {
      items.add(DropdownMenuItem(
        child: Text(item.name),
        value: item,
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: DropdownButton(
                isExpanded: true,
                style: TextStyle(color: Colors.purple, fontSize: 20),
                items: generateItems(persons),
                value: selectedPersons,
                onChanged: (item) {
                  setState(() {
                    selectedPersons = item;
                  });
                },
              ),
            ),
            Text(
              (selectedPersons != null) ? selectedPersons.name : '',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}

class Person {
  String name;
  Person(this.name);
}
