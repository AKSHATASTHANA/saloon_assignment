import 'package:flutter/material.dart';

class LatestOffers extends StatelessWidget {
  const LatestOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Latest Offers',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Card(
          elevation: 4,
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Colors.blue, Colors.lightBlueAccent]),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const ListTile(
                title: Text('Glam Beauty Parlour'),
                subtitle: Text('Badshahpur, Sector 48'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    Text('4.6'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
