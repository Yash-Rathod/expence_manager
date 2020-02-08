
import 'package:flutter/material.dart';
import 'db/offline_db_provider.dart';
import 'screens/home_page.dart';

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