import 'package:flutter/material.dart';

class TopServices extends StatelessWidget {
  const TopServices({super.key});

  @override
  Widget build(BuildContext context) {
    final services = [
      {'icon': Icons.content_cut, 'label': 'Haircut'},
      {'icon': Icons.brush, 'label': 'Styling'},
      {'icon': Icons.color_lens, 'label': 'Hair Color'},
      {'icon': Icons.handshake, 'label': 'Manicure'},
      {'icon': Icons.pedal_bike, 'label': 'Pedicure'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            'Top Services',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.brown,
            ),
          ),
        ),
        const SizedBox(height: 12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: services
                .map(
                  (service) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            service['icon'] as IconData,
                            size: 30,
                            color: const Color(0xFFCE8880),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          service['label'] as String,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFCE8880),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
