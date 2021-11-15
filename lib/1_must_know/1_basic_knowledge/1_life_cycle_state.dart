import 'package:flutter/material.dart';

class AppLifeCycleState extends StatefulWidget {
  @override
  _AppLifeCycleStateState createState() => _AppLifeCycleStateState();
}

class _AppLifeCycleStateState extends State<AppLifeCycleState>
    with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.inactive) {
      print('----Inactive----');
    }
    if (state == AppLifecycleState.paused) {
      print('----Paused----');
    }
    if (state == AppLifecycleState.resumed) {
      print('----resumed----');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Application State Demo'),
      ),
      body: Container(),
    );
  }
}
