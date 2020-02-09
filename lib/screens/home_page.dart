import 'category.dart';
import 'dashboard_page.dart';
import 'stocks.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List<String> _tabs = ["Home", "Category", "Stocks"];

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: _tabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Expense Manager"),
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.category)),
              Tab(icon: Icon(Icons.monetization_on)),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            DashboardPage(),
            CategoryPage(),
            App(),
//            Center(
//                child: Text(
//              "Stocks",
//              style: Theme.of(context).textTheme.display1,
//            ))
          ],
        ));
  }
}
