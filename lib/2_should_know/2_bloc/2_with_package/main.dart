import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_learn/2_should_know/2_bloc/2_with_package/color_bloc.dart';

class BlocPackage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => ColorBloc(),
        child: MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
              onPressed: () {
                BlocProvider.of<ColorBloc>(context).add(ColorEvent.to_amber);
              },
              backgroundColor: Colors.amber),
          SizedBox(width: 10),
          FloatingActionButton(
              onPressed: () {
                BlocProvider.of<ColorBloc>(context)
                    .add(ColorEvent.to_light_blue);
              },
              backgroundColor: Colors.lightBlue),
        ],
      ),
      body: Center(
        child: BlocBuilder<ColorBloc, Color>(
          builder: (context, currentColor) => AnimatedContainer(
              width: 100,
              height: 100,
              duration: Duration(microseconds: 100),
              color: currentColor),
        ),
      ),
    );
  }
}
