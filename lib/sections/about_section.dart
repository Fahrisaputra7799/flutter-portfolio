import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title: Who Am I
          Text(
            "Who Am I",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: const Color(0xFF1E293B),
            ),
          ),
          const SizedBox(height: 16),
          
          // Description with rich text
          Text.rich(
            TextSpan(
              text:
                  "Fresh graduate dengan semangat tinggi dalam pengembangan aplikasi mobile menggunakan Dart",
              style: TextStyle(
                fontSize: 16,
                color: const Color(0xFF475569),
                height: 1.6,
              ),
              children: [
                TextSpan(
                  text: " Flutter,",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF2563EB),
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(
                  text: " dan ",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: const Color(0xFF475569),
                  ),
                ),
                TextSpan(
                  text: "Firebase. ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFFFA408),
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(
                  text: "Berfokus pada solusi real-time dan siap untuk berkontribusi serta berkembang di dunia teknologi.",
                ),
              ],
            ),
            style: TextStyle(
              fontSize: 16,
              height: 1.6,
              color: const Color(0xFF475569),
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
