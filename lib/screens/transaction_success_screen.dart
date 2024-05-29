import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionSuccessScreen extends StatelessWidget {
  final Transaction transaction;

  TransactionSuccessScreen({required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction Success'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Transaction Successful!', style: Theme.of(context).textTheme.headline5),
            SizedBox(height: 16),
            Text('Concert: ${transaction.concertName}', style: Theme.of(context).textTheme.headline6),
            Text('Date: ${transaction.date}', style: Theme.of(context).textTheme.headline6),
            Text('Seat Type: ${transaction.seatType}', style: Theme.of(context).textTheme.headline6),
            Text('Price: Rp ${transaction.price.toStringAsFixed(0)}', style: Theme.of(context).textTheme.headline6),
            Text('Payment Method: ${transaction.paymentMethod}', style: Theme.of(context).textTheme.headline6),
            SizedBox(height: 16),
            Text('Transaction Code: ${transaction.id}', style: Theme.of(context).textTheme.headline6),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/home'));
              },
              child: Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
