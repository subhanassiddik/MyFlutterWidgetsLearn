import 'package:flutter/material.dart';

class DragAbleWidget extends StatefulWidget {
  @override
  _DragAbleWidgetState createState() => _DragAbleWidgetState();
}

class _DragAbleWidgetState extends State<DragAbleWidget> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  Color targetColor;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Draggable<Color>(
                data: color1,
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: Material(
                    color: color1,
                    shape: StadiumBorder(),
                    elevation: 3,
                  ),
                ),
                feedback: SizedBox(
                  height: 50,
                  width: 50,
                  child: Material(
                    color: color1.withOpacity(0.80),
                    shape: StadiumBorder(),
                    elevation: 0,
                  ),
                ),
                childWhenDragging: SizedBox(
                  height: 50,
                  width: 50,
                  child: Material(
                    color: Colors.grey,
                    shape: StadiumBorder(),
                    elevation: 3,
                  ),
                ),
              ),
              DragTarget<Color>(
                //fungsi yang akana mengecek apakah data akan diterima atau tidak
                onWillAccept: (value) => true,
                //fungsi yangakan dilakukan ketika kita menerima data tersebut
                onAccept: (value) {
                  isAccepted = true;
                  targetColor = value;
                },
                //method yang akan dipakai untuk membuat widget drag target ini
                builder: (context, candidates, rejected) {
                  return (isAccepted)
                      ? SizedBox(
                          height: 100,
                          width: 100,
                          child: Material(
                            color: targetColor,
                            shape: StadiumBorder(),
                          ),
                        )
                      : SizedBox(
                          height: 100,
                          width: 100,
                          child: Material(
                            color: Colors.grey,
                            shape: StadiumBorder(),
                          ),
                        );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
