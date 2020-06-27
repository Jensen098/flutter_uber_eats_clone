import 'package:flutter/material.dart';
import 'package:flutterubereatsclone/restaurant-menu.dart';
//import 'data/menu_items.dart';
//import 'package:flutterubereatsclone/main_menu_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UberEatsClone',
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: CustomScrollViewExample(),
      ),
    );
  }
}
