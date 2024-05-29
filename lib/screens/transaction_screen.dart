import 'package:flutter/material.dart';
import '../models/concert.dart';
import 'transaction_success_screen.dart';
import '../models/transaction.dart';

class TransactionScreen extends StatelessWidget {
  final Concert concert;
  final String seatType;
  final double price;

  TransactionScreen({required this.concert, required this.seatType, required this.price});

  @override
  Widget build(BuildContext context) {
    String selectedPaymentMethod = 'Dana';

    void _completeTransaction() {
      final transaction = Transaction(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        concertName: concert.name,
        seatType: seatType,
        price: price,
        paymentMethod: selectedPaymentMethod,
        date: DateTime.now(),
      );

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TransactionSuccessScreen(transaction: transaction),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Payment for ${concert.name}'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Seat Type: $seatType', style: Theme.of(context).textTheme.headline6),
            Text('Price: Rp ${price.toStringAsFixed(0)}', style: Theme.of(context).textTheme.headline6),
            SizedBox(height: 16),
            Text('Select Payment Method:', style: Theme.of(context).textTheme.headline6),
            ListTile(
              title: Text('Dana'),
              leading: Radio(
                value: 'Dana',
                groupValue: selectedPaymentMethod,
                onChanged: (value) {
                  selectedPaymentMethod = value.toString();
                },
              ),
            ),
            ListTile(
              title: Text('Gopay'),
              leading: Radio(
                value: 'Gopay',
                groupValue: selectedPaymentMethod,
                onChanged: (value) {
                  selectedPaymentMethod = value.toString();
                },
              ),
            ),
            ListTile(
              title: Text('Bank Transfer'),
              leading: Radio(
                value: 'Bank Transfer',
                groupValue: selectedPaymentMethod,
                onChanged: (value) {
                  selectedPaymentMethod = value.toString();
                },
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _completeTransaction,
              child: Text('Complete Transaction'),
            ),
          ],
        ),
      ),
    );
  }
}
