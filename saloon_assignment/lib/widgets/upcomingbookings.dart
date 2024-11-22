import 'package:flutter/material.dart';

class UpcomingBookings extends StatelessWidget {
  const UpcomingBookings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: Text(
            'Upcoming Bookings',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFFCE8880),
            ),
          ),
        ),
        const SizedBox(height: 12),
        Card(
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                backgroundColor: Color(0xFFCE8880),
                child: Icon(
                  Icons.content_cut,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              title: Text(
                'Haircut',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                'Glam Beauty Parlour\n16th Sept \'24, 01:30 pm',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  height: 1.5,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
