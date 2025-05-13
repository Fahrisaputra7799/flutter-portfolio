import 'package:flutter/material.dart';
import 'package:flutter_portfolio/animates/hover_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KodingWorksPage extends StatelessWidget {
  const KodingWorksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 430, maxHeight: 800),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 4, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // App Icons Grid
                              GridView.count(
                                crossAxisCount: 4,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                mainAxisSpacing: 12,
                                crossAxisSpacing: 12,
                                padding: const EdgeInsets.symmetric(horizontal: 8),
                                children: [
                                  _buildAppIcon(FontAwesomeIcons.github, "GitHub", () {}),
                                  _buildAppIcon(FontAwesomeIcons.linkedin, "LinkedIn", () {}),
                                  _buildAppIcon(FontAwesomeIcons.instagram, "Instagram", () {}),
                                  _buildAppIcon(FontAwesomeIcons.whatsapp, "WhatsApp", () {}),
                                  _buildAppIcon(FontAwesomeIcons.twitter, "Twitter", () {}),
                                  _buildAppIcon(FontAwesomeIcons.facebook, "Facebook", () {}),
                                  _buildAppIcon(FontAwesomeIcons.youtube, "YouTube", () {}),
                                  _buildAppIcon(FontAwesomeIcons.dribbble, "Dribbble", () {}),
                                  _buildAppIcon(FontAwesomeIcons.github, "GitHub", () {}),
                                  _buildAppIcon(FontAwesomeIcons.linkedin, "LinkedIn", () {}),
                                  _buildAppIcon(FontAwesomeIcons.instagram, "Instagram", () {}),
                                  _buildAppIcon(FontAwesomeIcons.whatsapp, "WhatsApp", () {}),
                                  _buildAppIcon(FontAwesomeIcons.twitter, "Twitter", () {}),
                                  _buildAppIcon(FontAwesomeIcons.facebook, "Facebook", () {}),
                                  _buildAppIcon(FontAwesomeIcons.youtube, "YouTube", () {}),
                                  _buildAppIcon(FontAwesomeIcons.dribbble, "Dribbble", () {}),
                                ],
                              ),
                              const SizedBox(height: 16),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAppIcon(IconData icon, String label, VoidCallback onPressed) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: HoverIconButton(
            icon: icon,
            onPressed: onPressed,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 12, color: Colors.black87),
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  Widget _buildDockIcon(IconData icon, String label, VoidCallback onPressed) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: HoverIconButton(
            icon: icon,
            onPressed: onPressed,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 12, color: Colors.black87),
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}