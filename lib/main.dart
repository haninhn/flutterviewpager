import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp( MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {

   MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application. 
  //   
  final List<Widget> myWidgets = [
    Container(color: Colors.red, height: 100, width: 100),
    Container(color: Colors.green, height: 100, width: 100),
    Container(color: Colors.blue, height: 100, width: 100),
  ];

    List<Tab> myTabs = [
     const Tab(child: Text("Lessons")),
     const Tab(child: Text("Exams")),
     const Tab(child: Text("Recording")),
     ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  HomePage(tabs: myTabs, tabsContent: myWidgets),

    );
  }
}


