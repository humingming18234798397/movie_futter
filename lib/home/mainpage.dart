import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    title: "FloatingActionButton",

    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  List _pageList = [
    Page("电影"),
    Page("影院"),
    Page("我的")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black87,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("电影", style: TextStyle(color: Colors.black))),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("影院", style: TextStyle(color: Colors.black))),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("我的", style: TextStyle(color: Colors.black))),
        ],
      ),
    );
  }
}

class Page extends StatelessWidget {
  String text;

  Page(this.text);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text),
    );
  }
}