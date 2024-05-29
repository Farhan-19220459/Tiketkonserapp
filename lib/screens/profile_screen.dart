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
            Text('Name: John Doe', style: Theme.of(context).textTheme.headline6),
            Text('Age: 25', style: Theme.of(context).textTheme.headline6),
            Text('Gender: Male', style: Theme.of(context).textTheme.headline6),
            Text('Email: johndoe@example.com', style: Theme.of(context).textTheme.headline6),
          ],
        ),
      ),
    );
  }
}
