import 'package:flutter/material.dart';
import 'package:movas/config/config.dart';
import 'package:provider/provider.dart';

import 'movas/providers.dart';
import 'movas/views/demo_page/demo_page.dart';

void main() {
  moveAss(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DemoPage(),
      ),
    );
  }
}
