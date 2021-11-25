import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_learn/2_should_know/2_bloc/4_multibloc_multipage/bloc/color_bloc.dart';
import 'package:flutter_widget_learn/2_should_know/2_bloc/4_multibloc_multipage/bloc/counter_bloc.dart';
import 'package:flutter_widget_learn/2_should_know/2_bloc/4_multibloc_multipage/ui/draft_page.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc, Color>(
      builder: (context, color) => DraftPage(
        backgroundColor: color,
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              BlocBuilder<CounterBloc, int>(
                builder: (context, counter) => GestureDetector(
                  onTap: () {
                    BlocProvider.of<CounterBloc>(context).add(counter + 1);
                  },
                  child: Text(counter.toString(),
                      style: TextStyle(
                          fontSize: 50.0, fontWeight: FontWeight.w500)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<ColorBloc>(context)
                          .add(ColorEvent.to_pink);
                    },
                    child: null,
                    style: ElevatedButton.styleFrom(
                        shape: (color == Colors.pink)
                            ? CircleBorder(
                                side: BorderSide(color: Colors.black, width: 3))
                            : CircleBorder(),
                        padding: EdgeInsets.all(25),
                        primary: Colors.pink),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<ColorBloc>(context)
                          .add(ColorEvent.to_amber);
                    },
                    child: null,
                    style: ElevatedButton.styleFrom(
                        shape: (color == Colors.amber)
                            ? CircleBorder(
                                side: BorderSide(color: Colors.black, width: 3))
                            : CircleBorder(),
                        padding: EdgeInsets.all(25),
                        primary: Colors.amber),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<ColorBloc>(context)
                          .add(ColorEvent.to_purple);
                    },
                    child: null,
                    style: ElevatedButton.styleFrom(
                        shape: (color == Colors.purple)
                            ? CircleBorder(
                                side: BorderSide(color: Colors.black, width: 3))
                            : CircleBorder(),
                        padding: EdgeInsets.all(25),
                        primary: Colors.purple),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
