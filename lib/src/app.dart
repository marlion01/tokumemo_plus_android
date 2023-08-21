import 'package:flutter/material.dart';
import 'pages/bottom_navigation_pages/clublist.dart';
import 'pages/bottom_navigation_pages/home.dart';
import 'pages/bottom_navigation_pages/news.dart';
import 'pages/bottom_navigation_pages/settings.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const _screen=[
    Homepage(),
    Clublist(),
    News(),
    Setting(),
  ];
  int _selectedIndex=0;
  void _selectItem(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _selectItem,
        items: const[
          BottomNavigationBarItem(
            icon: icon,
            label: Home,
            too
          )
        ],
      ),
    );
  }
}