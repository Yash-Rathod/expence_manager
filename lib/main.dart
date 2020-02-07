import 'package:expence_manager/models/category_model.dart';
import 'package:flutter/material.dart';
import 'db/offline_db_provider.dart';

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

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController _tabController;
  List<CategoryModel> _lsCateogies = List<CategoryModel>();
  List<String> _tabs = ["Home", "Category", "Report"];

  @override void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: _tabs.length);
    _initCategories();
  }

  _initCategories() {
    var cat1 = CategoryModel().rebuild((b) => b
      ..id = 0
      ..title = "Home Utils"
      ..desc = "Home utility related expenses"
      ..iconCodePoint = Icons.home.codePoint);

    _lsCateogies.add(cat1);

    var cat2 = CategoryModel().rebuild((b) => b
      ..id = 0
      ..title = "Grocery"
      ..desc = "Grocery related expenses"
      ..iconCodePoint = Icons.local_grocery_store.codePoint);

    _lsCateogies.add(cat2);

    var cat3 = CategoryModel().rebuild((b) => b
      ..id = 0
      ..title = "Food"
      ..desc = "Food related expenses"
      ..iconCodePoint = Icons.fastfood.codePoint);

    _lsCateogies.add(cat3);

    var cat4 = CategoryModel().rebuild((b) => b
      ..id = 0
      ..title = "Auto"
      ..desc = "Car/Bike related expenses"
      ..iconCodePoint = Icons.directions_bike.codePoint);

    _lsCateogies.add(cat4);
  }

  Widget _getCategoryTab() {
    return ListView.builder(
      itemCount: _lsCateogies.length,
      itemBuilder: (BuildContext ctxt, int index) {
        var category = _lsCateogies[index];
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              border: new Border.all(
                  width: 1.0, style: BorderStyle.solid, color: Colors.white)),
          margin: EdgeInsets.all(12.0),
          child: ListTile(
            onTap: () {},
            leading: Icon(
              IconData(category.iconCodePoint, fontFamily: 'MaterialIcons'),
              color: Theme.of(context).accentColor,
            ),
            title: Text(category.title, style: Theme.of(context).textTheme.bodyText1.copyWith(
                color: Theme.of(context).accentColor
            ),),
            subtitle: Text(category.desc, ),
          ),
        );
      },
    );
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
              Tab(icon: Icon(Icons.report)),
            ],
          ),
        ),
        drawer: Drawer(
          elevation: 20.0,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('MyProfile'),
                accountEmail: Text('abc@xyz.com'),
                currentAccountPicture:Icon(
                  Icons.account_circle,
                  size: 60.0,
                ),
                decoration: BoxDecoration(color: Colors.grey),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: (){},
              )
            ],
          ),

        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Center(child: Text("Home", style: Theme.of(context).textTheme.headline4,)),
            _getCategoryTab(),
            Center(child: Text("Reports", style: Theme.of(context).textTheme.headline4,))
          ],
        )
    );

  }
}

//Center(child: Text("Category", style: Theme.of(context).textTheme.headline4,))