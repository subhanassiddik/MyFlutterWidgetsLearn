import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_learn/2_should_know/2_bloc/5_blog_plugin/bloc/counter_bloc.dart';

class BlocPlugin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(),
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    CounterBloc cbloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, counterState) {
                return Text(
                  counterState.value.toString(),
                  style: TextStyle(fontSize: 50),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () => cbloc.add(Increment()),
                    icon: Icon(Icons.add)),
                SizedBox(width: 50),
                IconButton(
                    onPressed: () => cbloc.add(Decrement()),
                    icon: Icon(Icons.remove)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
