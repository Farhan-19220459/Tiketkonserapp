import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_pic.png'),
            ),
            SizedBox(height: 16),
            Text('Name: Farhan', style: Theme.of(context).textTheme.headline6),
            Text('Telepon: +62 815 7467 0738', style: Theme.of(context).textTheme.headline6),
            Text('Email: Farhannnn148@gmail.com', style: Theme.of(context).textTheme.headline6),
          ],
        ),
      ),
    );
  }
}
