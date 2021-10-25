import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_curvednavigationbar/pages/page_1.dart';
import 'package:flutter_curvednavigationbar/pages/page_2.dart';
import 'package:flutter_curvednavigationbar/pages/page_3.dart';
import 'package:flutter_curvednavigationbar/pages/page_4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 2;

  final screens = [Page_1(), Page_2(), Page_3(),Page_4(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.black,
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(
            Icons.home_outlined,
            size: 30,
            color: Colors.white,

          ),
          Icon(
            Icons.monetization_on_outlined,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.sports_cricket_outlined,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.sports_football_outlined,
            size: 30,
            color: Colors.white,
          ),
        ],
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 400),
        color: Colors.redAccent,
        height: 60.0,
        index: index,
        onTap: (index) => setState(() => this.index = index),
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.red,

      ),
    );
  }
}
