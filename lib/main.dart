import 'package:flutter/material.dart';
import 'package:hireme/ui/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of my application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HireMe',
      theme: ThemeData.light(),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
