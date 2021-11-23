import 'package:flutter/material.dart';
import 'package:flutter_widget_learn/2_should_know/2_bloc/1_no_package/color_bloc.dart';

class BlocProviderNoLibrary extends StatefulWidget {
  @override
  _BlocProviderNoLibraryState createState() => _BlocProviderNoLibraryState();
}

class _BlocProviderNoLibraryState extends State<BlocProviderNoLibrary> {
  Colorbloc bloc = Colorbloc();
  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                bloc.eventSink.add(ColorEvent.to_amber);
              },
              backgroundColor: Colors.amber,
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                bloc.eventSink.add(ColorEvent.to_light_blue);
              },
              backgroundColor: Colors.blue,
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: StreamBuilder(
                  initialData: Colors.amber,
                  stream: bloc.stateStream,
                  //snapsot => data yang dikirmkan dari stream
                  builder: (context, snapshot) {
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 100),
                      height: 100,
                      width: 100,
                      color: snapshot.data,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
