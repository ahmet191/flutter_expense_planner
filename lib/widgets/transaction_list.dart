// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, sized_box_for_whitespace

import '../models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            child: Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 2,
                    color: Colors.purple,
                  )),
                  child: Text(
                    '\$ ${transactions[index].amount.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.purple,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      transactions[index].title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      DateFormat('dd-MM-yyyy').format(transactions[index].date),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        itemCount: transactions.length,
      ),
    );
  }
}
