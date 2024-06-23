import 'package:flutter/material.dart';
import 'package:travelappg8/pages/home_page.dart';

class TabPage extends StatefulWidget {
  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TabBar(
        controller: _tabController,
        unselectedLabelColor: Colors.grey,
        labelColor: Colors.cyan,
        tabs: [
          Tab(icon: Icon(Icons.home)),
          Tab(icon: Icon(Icons.star)),
          Tab(icon: Icon(Icons.heart_broken_rounded)),
          Tab(icon: Icon(Icons.monetization_on)),
          Tab(icon: Icon(Icons.search)),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          HomePage(),
          Center(child: Text("star")),
          Center(child: Text("Love")),
          Center(child: Text("money")),
          Center(child: Text("search")),
        ],
      ),
    );
  }
}
