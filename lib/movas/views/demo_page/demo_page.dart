import 'package:flutter/material.dart';
import 'package:geolocationtest/movas/actions/bootstrap_action.dart';
import 'package:geolocationtest/movas/actions/toilet_action.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({Key key}) : super(key: key);

  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  void initState() {
    Future(() {
      BootstrapAction.of(context).getMyCurrentPosition();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
            icon: Icon(Icons.location_on),
            onPressed: () async {
              ToiletAction.of(context).getToiletsForCurrentPosition();
            }),
      ),
    );
  }
}
