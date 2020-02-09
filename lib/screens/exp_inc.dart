import 'package:expence_manager/models/st2.dart';
import 'package:expence_manager/screens/income.dart';
import 'package:flutter/material.dart';

class App1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Expense Manager",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold)),
              Text("Feb 9",
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey[500]),
                        hintText: "Search",
                        prefix: Icon(Icons.search),
                        fillColor: Colors.grey[800],
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 0, style: BorderStyle.none),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16)))),
                  ),
                ),
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height - 310,
                  child: Income(exp: Expense.getAll()))
            ],
          ),
        ),
      )
    ]));
  }
}
