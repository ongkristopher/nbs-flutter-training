import 'package:flutter/material.dart';
import 'package:nbs_training/home_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // theme: ThemeData.dark(),
      title: 'NBS Training',
      home: HomePage(),
    );
  }
  
}