import 'package:flutter/material.dart';
import 'db/offline_db_provider.dart';
import 'screens/home_page.dart';
//import 'package:expence_manager/screens/stocks.dart';

void main() {
  OfflineDbProvider.provider.initDB();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

//Center(child: Text("Category", style: Theme.of(context).textTheme.headline4,))
//
//class App extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: "Stocks",
//      theme: ThemeData.dark(),
//      home: HomePage(),
//    );
//  }
//}
