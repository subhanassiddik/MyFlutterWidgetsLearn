import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

enum ColorEvent { to_amber, to_light_blue }

class ColorBloc extends Bloc<ColorEvent, Color> {
  Color _color = Colors.amber;

  //initial state adalah state awal sebelum ada event
  @override
  Color get initialState => Colors.amber;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    _color = (event == ColorEvent.to_amber) ? Colors.amber : Colors.lightBlue;
    //yield perintah untuk memasukkan data ke stream
    yield _color;
  }
}
