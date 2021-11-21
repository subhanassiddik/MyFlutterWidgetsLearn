import 'package:flutter/material.dart';
import 'package:flutter_widget_learn/2_should_know/1_provider/2/cart.dart';
import 'package:flutter_widget_learn/2_should_know/1_provider/2/money.dart';
import 'package:provider/provider.dart';
// import 'package:flutter_widget_learn/2_should_know/1_provider/2/money.dart';
// import 'package:flutter_widget_learn/2_should_know/1_provider/2/cart.dart';

//multiProvider

class PackageMultiProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Money()),
          ChangeNotifierProvider(create: (context) => Cart())
        ],
        child: Scaffold(
          floatingActionButton: Consumer<Money>(
            builder: (context, money, _) => Consumer<Cart>(
              builder: (context, cart, _) => FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () {
                    if (money.balance >= 500) {
                      cart.quantity += 1;
                      money.balance -= 500;
                    }
                  }),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('balanced'),
                  Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      width: 150,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Consumer<Money>(
                            builder: (context, money, _) =>
                                Text(money.balance.toString())),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(color: Colors.blueAccent)))
                ],
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Consumer<Cart>(
                            builder: (context, cart, _) => Text(
                                'apple(500) x ' + cart.quantity.toString())),
                        Consumer<Cart>(
                            builder: (context, cart, _) =>
                                Text((cart.quantity * 500).toString()))
                      ]),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(color: Colors.blueAccent)))
            ],
          ),
        ),
      ),
    );
  }
}
