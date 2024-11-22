import 'package:flutter/material.dart';
import 'package:saloon_assignment/widgets/greetingscreen.dart';
import 'package:saloon_assignment/widgets/topservices.dart';
import 'package:saloon_assignment/widgets/upcomingbookings.dart';
import 'package:saloon_assignment/widgets/latestoffers.dart';
import 'package:saloon_assignment/widgets/popularsalon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GreetingSection(),
            SizedBox(height: 16),
            TopServices(),
            SizedBox(height: 16),
            UpcomingBookings(),
            SizedBox(height: 16),
            LatestOffers(),
            SizedBox(height: 16),
            PopularSalons(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'My Bookings'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: const Color(0xFFCE8880),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
