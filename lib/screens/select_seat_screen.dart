import 'package:flutter/material.dart';
import '../models/concert.dart';
import 'transaction_screen.dart';

class SelectSeatScreen extends StatefulWidget {
  final Concert concert;

  SelectSeatScreen({required this.concert});

  @override
  _SelectSeatScreenState createState() => _SelectSeatScreenState();
}

class _SelectSeatScreenState extends State<SelectSeatScreen> {
  String selectedSeatType = 'Regular';
  double seatPrice = 300000;

  void _selectSeat(String seatType, double price) {
    setState(() {
      selectedSeatType = seatType;
      seatPrice = price;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Seat for ${widget.concert.name}'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text('Regular Seat'),
              subtitle: Text('Rp ${widget.concert.regularPrice.toStringAsFixed(0)}'),
              trailing: Radio(
                value: 'Regular',
                groupValue: selectedSeatType,
                onChanged: (value) {
                  _selectSeat('Regular', widget.concert.regularPrice);
                },
              ),
            ),
            ListTile(
              title: Text('VIP Seat'),
              subtitle: Text('Rp ${widget.concert.vipPrice.toStringAsFixed(0)}'),
              trailing: Radio(
                value: 'VIP',
                groupValue: selectedSeatType,
                onChanged: (value) {
                  _selectSeat('VIP', widget.concert.vipPrice);
                },
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TransactionScreen(
                      concert: widget.concert,
                      seatType: selectedSeatType,
                      price: seatPrice,
                    ),
                  ),
                );
              },
              child: Text('Proceed to Payment'),
            ),
          ],
        ),
      ),
    );
  }
}
