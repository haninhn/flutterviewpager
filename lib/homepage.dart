import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   final List<Tab> tabs;
   final List<Widget> tabsContent;
    // ignore: prefer_const_constructors_in_immutables
    // ignore: use_key_in_widget_constructors
   const HomePage({required this.tabs, required this.tabsContent});

  // List<Tab> tabs = [
  //   Tab(child: Text("Lessons")),
  //   Tab(child: Text("Exams")),
  //   Tab(child: Text("Recording")),
  // ];

  // List<Widget> tabsContent = [
  //   Container(Text('lessons Page')),
  //   Container(color: Colors.green),
  //   Container(color: Colors.teal),
  // ];

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


@override
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
                 Expanded(
                  child: TabBarView(
                  children: tabsContent ,
                ))
              ],
            ),
          )),
    );
  }
}

    // child: TabBarView(
    //           children: [
    //             Center(
    //               child: Text("Lessons Pages"),
    //             ),
    //             Center(
    //               child: Text("Exams Pages"),
    //             ),
    //             Center(
    //               child: Text('Recording Page'),
    //             ),
    //           ],
    //         )
   
