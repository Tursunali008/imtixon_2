import 'package:flutter/material.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        leading: Image.asset(
          'assets/images/event_img.jpg',
          width: 50,
          fit: BoxFit.contain,
        ),
        title: const Text('Elevate: The Conference for Professional Growth'),
        subtitle: const Text('11 Dec, 2023'),
      ),
    );
  }
}
