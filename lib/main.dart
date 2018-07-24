import 'package:flutter/material.dart';
import 'mainPage.dart';

void main()
 {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  final titleString = "Drawer Menu";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: titleString,
      home: new MainPage(),
    );
  }
}

