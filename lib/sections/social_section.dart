import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart'; // untuk membuka tautan
import '../providers.dart';

class SocialSection extends ConsumerWidget {
  const SocialSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(themeProvider);

    return Card(
      color: Theme.of(context).cardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _SocialIcon(
              icon: FontAwesomeIcons.house,
              tooltip: "Home",
              onPressed: () {
                // Aksi saat tombol Home ditekan
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Home ditekan")),
                );
              },
            ),
            _SocialIcon(
              icon: FontAwesomeIcons.github,
              tooltip: "GitHub",
              onPressed: () async {
                final url = Uri.parse("https://github.com/fahrisaputra7799");
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Gagal membuka GitHub")),
                  );
                }
              },
            ),
            _SocialIcon(
              icon: isDark ? Icons.dark_mode : Icons.light_mode,
              tooltip: "Toggle Theme",
              onPressed: () {
                final themeNotifier = ref.read(themeProvider.notifier);
                themeNotifier.state = !isDark;
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _SocialIcon extends StatelessWidget {
  final IconData icon;
  final String tooltip;
  final VoidCallback onPressed;

  const _SocialIcon({
    required this.icon,
    required this.tooltip,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      tooltip: tooltip,
      color: Theme.of(context).iconTheme.color,
      onPressed: onPressed,
    );
  }
}
