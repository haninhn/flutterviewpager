import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<Tab> tabs = [
    Tab(child: Text("Teal")),
    Tab(child: Text("Green")),
    Tab(child: Text("Blue")),
    Tab(child: Text("Yellow")),
    Tab(child: Text("Red")),
    Tab(child: Text("Orange")),
    Tab(child: Text("Grey")),
  ];

  List<Widget> tabsContent = [
    Container(color: Colors.teal),
    Container(color: Colors.green),
    Container(color: Colors.teal),
    Container(color: Colors.green),
    Container(color: Colors.teal),
    Container(color: Colors.teal),
    Container(color: Colors.teal),
  ];

  // @override
  // Widget build(BuildContext context) {

  //   return DefaultTabController(
  //     length: tabs.length,
  //     child: Scaffold(
  //       appBar: AppBar(
  //         title: Text("Scrollable Tab"),
  //         backgroundColor: Colors.green[700],
  //         centerTitle: true,
  //         brightness: Brightness.dart,
  //         bottom: PreferredSize(
  //           preferredSize: Size.fromHeight(30),
  //         child: TabBar(
  //             indicatorColor: Colors.white,
  //             isScrollable: true,
  //             tabs: tabs,
  //           ),
  //         ),
  //       ),
  //       body: TabBarView(
  //         children: tabsContent,
  //       ),
  //     ),
  //   );


  // }


  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
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
                    tabs: tabs
                  ),
                ),
                const Expanded(
                  child: TabBarView(
                  children: tabsContent ,
                ))
              ],
            ),
          )),
    );
  }
}


   
