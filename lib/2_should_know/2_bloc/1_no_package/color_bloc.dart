import 'dart:async';
import 'package:flutter/material.dart';

//cara kerja bloc
//Event => bloc => UI

//stream controller => komponen yang akan mengontrol aliran data
//didalam sttream controller :
//  1. sink => input
//  2. stream => output

//untuk membuat jenis-jenis color event
enum ColorEvent { to_amber, to_light_blue }

class Colorbloc {
  //untuk menghubungkan event controller dengan method mapeventcontroller
  Colorbloc() {
    _eventController.stream.listen(_mapEventToState);
  }

  //variable untuk menyimpan perubahan(state)
  Color _color = Colors.amber;

  //stream controller untuk color event
  //menerima input dari ui
  StreamController<ColorEvent> _eventController =
      StreamController<ColorEvent>();
  //sink dibuat publik agar bisa diakses dari ui atau tombol di ui
  StreamSink<ColorEvent> get eventSink => _eventController.sink;

  //input yang masuk dari stream controller akan di masukkan di method ini
  void _mapEventToState(ColorEvent colorEvent) {
    if (colorEvent == ColorEvent.to_amber) {
      _color = Colors.amber;
    } else {
      _color = Colors.lightBlue;
    }

    //untuk memasukkan stateyang dipilih ke stream colontroller
    _stateSink.add(_color);
  }

  //stream controller untuk state
  //mengeluarkan output ke ui
  StreamController<Color> _stateController = StreamController<Color>();
  //sink dibuat private karena masuknya aksesnya masih di class ini sendiri(dari method mapEventToState)
  StreamSink<Color> get _stateSink => _stateController.sink;
  //dibuat publik agar bisa diakses dari container di ui
  Stream<Color> get stateStream => _stateController.stream;

  //untuk membersikan method yang sudah terpakai agar memori tidak banyak terpakai
  void dispose() {
    _eventController.close();
    _stateController.close();
  }
}
