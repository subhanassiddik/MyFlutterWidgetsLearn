import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_learn/2_should_know/2_bloc/4_multibloc_multipage/bloc/color_bloc.dart';
import 'package:flutter_widget_learn/2_should_know/2_bloc/4_multibloc_multipage/bloc/counter_bloc.dart';
import 'package:flutter_widget_learn/2_should_know/2_bloc/4_multibloc_multipage/ui/main_page.dart';

class MultiBlocPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ColorBloc>(
          create: (BuildContext context) => ColorBloc(),
        ),
        BlocProvider<CounterBloc>(
          create: (BuildContext context) => CounterBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      ),
    );
  }
}
