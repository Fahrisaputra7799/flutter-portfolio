import 'package:flutter/material.dart';
import 'package:flutter_portfolio/animates/hover_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialSection extends StatelessWidget {
  const SocialSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(28),
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
            offset: Offset(-4, -4),
            blurRadius: 10,
          ),
          BoxShadow(
            color: Color(0x1A000000), // subtle black shadow
            offset: Offset(4, 4),
            blurRadius: 10,
          ),
        ],
      ),
      child: Wrap(
        spacing: 20,
        runSpacing: 16,
        alignment: WrapAlignment.center,
        children: const [
          _SocialButton(icon: FontAwesomeIcons.house),
          _SocialButton(icon: FontAwesomeIcons.cubes),
          _SocialButton(icon: FontAwesomeIcons.github),
          _SocialButton(icon: FontAwesomeIcons.instagram),
          _SocialButton(icon: FontAwesomeIcons.linkedin),
          _SocialButton(icon: FontAwesomeIcons.whatsapp),
          _SocialButton(icon: FontAwesomeIcons.filePdf),
        ],
      ),
    );
  }
}

class _SocialButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const _SocialButton({required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return HoverIconButton(
      icon: icon,
      onPressed: onPressed ?? () {},
      size: 28,
      color: Colors.grey[800],
      backgroundColor: const Color(0xFFEFF3F7),
      borderRadius: 16,
      shadow: const [
        BoxShadow(
          color: Colors.white,
          offset: Offset(-2, -2),
          blurRadius: 6,
        ),
        BoxShadow(
          color: Color(0x22000000),
          offset: Offset(2, 2),
          blurRadius: 6,
        ),
      ],
    );
  }
}
