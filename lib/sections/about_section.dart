import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title: Who Am I
          Text(
            "Who Am I",
            style: GoogleFonts.merriweather(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: isDark? Colors.white : Colors.black
            ),
          ),
          const SizedBox(height: 16),

          // Description with rich text
          Text(
            "A fresh graduate with a strong passion for mobile app development using Flutter, and Firebase. Focused on real-time solutions and ready to contribute and grow in the tech industry.",
            style: GoogleFonts.montserrat(
              fontSize: 16,
              height: 1.7,
              color: isDark? Colors.white : Colors.grey[700],
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
