import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/my_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
      routes: {
        MyPage.routeName: (context) => MyPage(),
      },
    );
  }
}
