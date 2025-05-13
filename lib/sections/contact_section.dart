import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Color(0xFF2563EB),
          shadowColor: Colors.grey.shade700,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "Contact",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                letterSpacing: 1.2,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          "Get in Touch",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1E293B),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: const TextStyle(
                fontSize: 15,
                color: Color(0xFF334155),
                height: 1.5,
              ),
              children: [
                const TextSpan(
                  text: "Want to chat? Just shoot us a dm ",
                ),
                TextSpan(
                  text: "with a direct question on WhatsApp.",
                  style: const TextStyle(
                    color: Color(0xFF2563EB),
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
