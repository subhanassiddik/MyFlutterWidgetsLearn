import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: GoogleFonts.abelTextTheme()
              .copyWith(bodyText1: GoogleFonts.modak())),
      home: Scaffold(
        appBar: AppBar(title: Text('google fonts')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('kepp learning', style: GoogleFonts.pacifico()),
              Text('General font from theme data'),
              Text('indonesia next top model',
                  style: Theme.of(context).textTheme.bodyText1)
            ],
          ),
        ),
      ),
    );
  }
}
