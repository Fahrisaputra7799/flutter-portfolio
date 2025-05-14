import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final primaryTextColor = isDark ? Colors.white : const Color(0xFF1E293B);
    final secondaryTextColor =
        isDark ? Colors.grey[400] : const Color(0xFF475569);
    final highlightColor =
        isDark ? const Color(0xFF2563EB) : const Color(0xFF2563EB);
    final accentColor =
        isDark ? const Color(0xFFFFA408) : const Color(0xFFFFA408);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title: Who Am I
          Text(
            "Who Am I",
            style: GoogleFonts.merriweather(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),

          // Description with rich text
          Text(
            "A fresh graduate with a strong passion for mobile app development using Flutter, and Firebase. Focused on real-time solutions and ready to contribute and grow in the tech industry.",
            style: GoogleFonts.montserrat(
              fontSize: 18,
              height: 1.7,
              color: secondaryTextColor,
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
