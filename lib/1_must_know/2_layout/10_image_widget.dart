import 'package:flutter/material.dart';

class WidgetImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.black,
              height: 200.0,
              width: 200.0,
              padding: EdgeInsets.all(3),
              child: Image(
                image: NetworkImage(
                    "https://akcdn.detik.net.id/community/media/visual/2020/02/10/570d0485-baef-4477-b32e-fbb63216d6db_43.jpeg?w=700&q=90"),
                // fit: BoxFit.none,
                // fit: BoxFit.contain,
                // fit: BoxFit.fill,
                fit: BoxFit.cover,
                // repeat: ImageRepeat.repeat,
              ),
            ),
            Container(
              color: Colors.black,
              height: 200.0,
              width: 200.0,
              padding: EdgeInsets.all(3),
              child: Image(
                image: AssetImage("images/default.jpg"),
                // fit: BoxFit.none,
                // fit: BoxFit.contain,
                // fit: BoxFit.fill,
                fit: BoxFit.cover,
                // repeat: ImageRepeat.repeat,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
