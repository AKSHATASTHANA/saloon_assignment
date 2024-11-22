import 'package:flutter/material.dart';

class PopularSalons extends StatelessWidget {
  const PopularSalons({super.key});

  @override
  Widget build(BuildContext context) {
    final salons = [
      {
        'name': 'GLAM BEAUTY PARLOUR',
        'services': '+20 Services',
        'sector': 'Sector 48'
      },
      {
        'name': 'CHARISMA SALOON',
        'services': '+20 Services',
        'sector': 'Sector 48'
      },
      {
        'name': 'UNIQUE STYLIST',
        'services': '+20 Services',
        'sector': 'Sector 48'
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: Text(
            'Popular Salons Near You',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFFCE8880),
            ),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: salons.length,
            itemBuilder: (context, index) {
              final salon = salons[index];
              return Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xFFCE8880),
                          child: Icon(
                            Icons.spa,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          salon['name']!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          salon['services']!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          salon['sector']!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
