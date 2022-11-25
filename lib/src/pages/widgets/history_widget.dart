import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mobile_ui_1/src/models/transactions_model.dart';
import 'package:date_time_format/date_time_format.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({super.key});

  Color get avatorColor {
    var colors = [
      Colors.black87,
      Colors.blueAccent,
      Colors.lightBlue,
      Colors.purple,
      Colors.deepOrange,
      Colors.blueGrey,
      Colors.indigo,
      Colors.pink,
      Colors.redAccent,
    ];
    var rd = Random();

    return colors[rd.nextInt(colors.length)];
  }

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    var _transactions = transactions;
    return ListView.builder(
      itemCount: _transactions.length,
      itemBuilder: (_, index){
        var transaction = _transactions[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: avatorColor.withOpacity(.6),
            child: Stack(
              children: [
                Center(child: Text(transaction.name[0], style: const TextStyle(color: Colors.white70, fontSize: 15),),),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 9,
                    width: 9,
                    decoration: BoxDecoration(
                      color: transaction.type == TransactionType.send ? Colors.redAccent : Colors.blue,
                      shape: BoxShape.circle
                    ),
                  ),
                )
              ],
            ),
          ),
          title: Text(transaction.name),
          subtitle: Text(transaction.date.format('D, M j, H:i')),
          trailing: Text('${transaction.type == TransactionType.send ? "-": "+" } \$ ${transaction.amount}'),
        );
      },
    );
  }
}