import 'package:flutter/material.dart';
import 'concert_detail_screen.dart';
import '../models/concert.dart';
import 'transaction_history_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static List<Widget> _pages = <Widget>[
    HomeContent(),
    TransactionHistoryScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Concert Tickets'),
      ),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  final List<Concert> concerts = [
    Concert(
      id: '1',
      name: 'Concert A',
      date: '2024-06-01',
      venue: 'Stadium 1',
      regularPrice: 300000,
      vipPrice: 1500000,
      description: 'A spectacular concert featuring top artists.',
      imageUrl: 'assets/concert_a.jpg',
    ),
    Concert(
      id: '2',
      name: 'Concert B',
      date: '2024-06-10',
      venue: 'Arena 2',
      regularPrice: 350000,
      vipPrice: 1600000,
      description: 'Experience an unforgettable night of music.',
      imageUrl: 'assets/concert_b.jpg',
    ),
    Concert(
      id: '3',
      name: 'Concert C',
      date: '2024-06-15',
      venue: 'Hall 3',
      regularPrice: 320000,
      vipPrice: 1550000,
      description: 'Join us for an evening of amazing performances.',
      imageUrl: 'assets/concert_c.jpg',
    ),
    Concert(
      id: '4',
      name: 'Concert D',
      date: '2024-06-20',
      venue: 'Ground 4',
      regularPrice: 340000,
      vipPrice: 1450000,
      description: 'A night of great music and entertainment.',
      imageUrl: 'assets/concert_d.jpg',
    ),
    Concert(
      id: '5',
      name: 'Concert E',
      date: '2024-06-25',
      venue: 'Theater 5',
      regularPrice: 310000,
      vipPrice: 1500000,
      description: 'An extraordinary concert experience.',
      imageUrl: 'assets/concert_e.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: concerts.length,
      itemBuilder: (context, index) {
        final concert = concerts[index];
        return ListTile(
          contentPadding: EdgeInsets.all(8.0),
          leading: Image.asset(concert.imageUrl, width: 50, height: 50, fit: BoxFit.cover),
          title: Text(concert.name),
          subtitle: Text('${concert.date} - ${concert.venue}'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ConcertDetailScreen(concert: concert),
              ),
            );
          },
        );
      },
    );
  }
}
