import 'package:flutter/material.dart';
import './page/page_1.dart';
import './page/page_2.dart';
import './page/page_3.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/page1',
      routes: {
        '/page1' : (context) => page1(),
        '/page2' : (context) => page2(),
        '/page3' : (context) => page3()
      },
    );
  }
}