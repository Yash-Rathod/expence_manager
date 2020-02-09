import 'package:expence_manager/models/st2.dart';
import 'package:expence_manager/screens/income.dart';
//import 'package:expence_manager/screens/stock_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  String getStringDate(DateTime dt) {
    return "${dt.year}/${dt.month}/${dt.day}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Container(
            padding: EdgeInsets.all(12.0),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    getStringDate(DateTime.now()),
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward),
                )
              ],
            )),
        SizedBox(
            height: MediaQuery.of(context).size.height - 310,
            child: Income(exp: Expense.getAll()))
      ]),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
    );
  }
}
