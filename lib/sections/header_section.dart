import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final primaryTextColor = isDark ? Colors.white : const Color(0xFF1E293B);
    final secondaryTextColor =
        isDark ? Colors.grey[400] : const Color(0xFF64748B);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Bagian teks
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Hi, I'm ",
                        style: GoogleFonts.merriweather(
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                          color: primaryTextColor,
                        ),
                      ),
                      TextSpan(
                        text: "Fahri Saputra 👋",
                        style: GoogleFonts.merriweather(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: primaryTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  "Flutter Developer from Indonesia. I build apps, solve problems, and love Open Source.",
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    height: 1.7,
                    color: isDark? Colors.white : Colors.black,
                    fontWeight: FontWeight.w400
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 24),

          // Flutter logo
          Container(
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                if (!isDark)
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
              ],
            ),
            padding: const EdgeInsets.all(12),
            child: const FlutterLogo(size: 80),
          ),
        ],
      ),
    );
  }
}
