import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.all(24),
      child: const Column(
        children: [
          Text('Contact: fahri@email.com'),
          SizedBox(height: 8),
          Text('© 2025 Fahri Saputra'),
        ],
      ),
    );
  }
}
