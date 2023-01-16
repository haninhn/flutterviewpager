import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10.0)),
              child: TabBar(
                indicator: BoxDecoration(
                    color: const Color(0xff344054),
                    borderRadius: BorderRadius.circular(20.0)),
                labelColor: Colors.white,
                unselectedLabelColor: const Color(0xff344054),
                tabs: const [
                  Tab(
                    text: 'Lessons',
                  ),
                  Tab(
                    text: 'Exams',
                  ),
                  Tab(
                    text: 'Recording',
                  ),
                ],
              ),
            ),
            const Expanded(
                child: TabBarView(
              children: [
                Center(
                  child: Text("Lessons Pages"),
                ),
                Center(
                  child: Text("Exams Pages"),
                ),
                Center(
                  child: Text('Recording Page'),
                ),
              ],
            ))
          ],
        ),
      )),
    );
  }
}
