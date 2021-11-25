import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_learn/2_should_know/2_bloc/4_multibloc_multipage/bloc/color_bloc.dart';
import 'package:flutter_widget_learn/2_should_know/2_bloc/4_multibloc_multipage/bloc/counter_bloc.dart';
import 'package:flutter_widget_learn/2_should_know/2_bloc/4_multibloc_multipage/ui/draft_page.dart';
import 'package:flutter_widget_learn/2_should_know/2_bloc/4_multibloc_multipage/ui/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc, Color>(
      builder: (context, color) => DraftPage(
        backgroundColor: color,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BlocBuilder<CounterBloc, int>(
                builder: (context, counter) => Text(counter.toString(),
                    style:
                        TextStyle(fontSize: 50.0, fontWeight: FontWeight.w500)),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: color),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondPage()));
                  },
                  child: Text('change Color'))
            ],
          ),
        ),
      ),
    );
  }
}
