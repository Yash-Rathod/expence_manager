import 'package:expence_manager/models/st2.dart';
import 'package:flutter/material.dart';
//import 'package:expence_manager/models/st.dart';

class Income extends StatelessWidget {
  final List<Expense> exp;

  Income({this.exp});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Divider(color: Colors.grey[400]);
      },
      itemCount: exp.length,
      itemBuilder: (context, index) {
        final stock = exp[index];

//        return Text("Stocks", style: TextStyle(color: Colors.white));

        return ListTile(
          contentPadding: EdgeInsets.all(10),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("${stock.symbol}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500)),
              Text("${stock.company}",
                  style: TextStyle(color: Colors.grey[500], fontSize: 20)),
            ],
          ),
          trailing: Column(
            children: <Widget>[
              Text("\$${stock.price}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
              Container(
                width: 75,
                height: 25,
                child: Text(
                  "-1.09%",
                  style: TextStyle(color: Colors.white),
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.green),
              )
            ],
          ),
        );
      },
    );
  }
}
