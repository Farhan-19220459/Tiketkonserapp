import 'package:flutter/material.dart';
import '../models/concert.dart';
import 'select_seat_screen.dart';

class ConcertDetailScreen extends StatelessWidget {
  final Concert concert;

  ConcertDetailScreen({required this.concert});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(concert.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(concert.imageUrl, width: double.infinity, height: 200, fit: BoxFit.cover),
            SizedBox(height: 8),
            Text('Date: ${concert.date}', style: Theme.of(context).textTheme.headline6),
            SizedBox(height: 8),
            Text('Venue: ${concert.venue}', style: Theme.of(context).textTheme.headline6),
            SizedBox(height: 8),
            Text('Description:', style: Theme.of(context).textTheme.headline6),
            Text(concert.description, style: Theme.of(context).textTheme.bodyText2),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectSeatScreen(concert: concert),
                  ),
                );
              },
              child: Text('Select Seat'),
            ),
          ],
        ),
      ),
    );
  }
}
