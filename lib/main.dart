import 'package:dashboard_app/first_screen.dart';
import 'package:dashboard_app/graph_firstscreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: firstscreen(),

      debugShowCheckedModeBanner: false,

    );
  }
}

