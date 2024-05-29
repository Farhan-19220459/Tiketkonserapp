import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionHistoryScreen extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(id: '1', concertName: 'Concert A', seatType: 'Regular', price: 300000, paymentMethod: 'Dana', date: DateTime.now()),
    Transaction(id: '2', concertName: 'Concert B', seatType: 'VIP', price: 1500000, paymentMethod: 'Gopay', date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction History'),
      ),
      body: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          final transaction = transactions[index];
          return ListTile(
            title: Text('Concert: ${transaction.concertName}'),
            subtitle: Text('Seat Type: ${transaction.seatType} - ${transaction.date}'),
            trailing: Text('Rp ${transaction.price.toStringAsFixed(0)}'),
          );
        },
      ),
    );
  }
}
