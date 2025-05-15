import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final primaryTextColor = isDark ? Colors.white : const Color(0xFF1E293B);
    final secondaryTextColor = isDark ? Colors.grey[400] : const Color(0xFF64748B);
    final cardColor = isDark ? Color(0xffffffff) : Colors.black;

    return Column(
      children: [
        Card(
          color: cardColor,
          shadowColor: Colors.grey.shade700,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Contact",
              style: GoogleFonts.poppins(
                fontSize: 13,
                color: isDark ? Colors.black : Colors.white,
                letterSpacing: 1.2,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          "Get in Touch",
          style: GoogleFonts.poppins(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: primaryTextColor,
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                fontSize: 15,
                color: secondaryTextColor,
                height: 1.5,
              ),
              children: [
                const TextSpan(
                  text: "Want to chat? Just shoot us a dm ",
                ),
                TextSpan(
                  text: "with a direct question on WhatsApp.",
                  style: TextStyle(
                    color: cardColor,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      final message = 'Bisa bantu saya?';
                      final encoded = Uri.encodeComponent(message);
                      final uri = Uri.parse(
                          "https://wa.me/6285756956510?text=$encoded");
                      await launchUrl(uri, mode: LaunchMode.externalApplication);
                    },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
