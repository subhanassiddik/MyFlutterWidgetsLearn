import 'package:flutter/material.dart';

class ListListView extends StatefulWidget {
  @override
  _ListListViewState createState() => _ListListViewState();
}

class _ListListViewState extends State<ListListView> {
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgets.add(Text(
                        'my list ' + counter.toString(),
                        style: TextStyle(fontSize: 30.0),
                      ));
                      counter++;
                    });
                  },
                  child: Text('tambah data')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgets.removeLast();
                      counter--;
                    });
                  },
                  child: Text(
                    'hapus data',
                  )),
            ],
          ),
          Column(
            children: widgets,
          )
        ],
      ),
    );
  }
}
