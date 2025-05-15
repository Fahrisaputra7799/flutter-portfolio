import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_portfolio/pages/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../providers.dart';

class SocialSection extends ConsumerWidget {
  const SocialSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(themeProvider);

    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 430),
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 6,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _SocialIcon(
              icon: FontAwesomeIcons.house,
              tooltip: "Home",
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => const HomePage(),
                    transitionDuration: Duration.zero, // Tanpa animasi
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              },
            ),
            _SocialIcon(
              icon: FontAwesomeIcons.bookOpenReader,
              tooltip: "Blog",
              onPressed: () async {
                final url = Uri.parse(
                  'https://www.linkedin.com/posts/fhrisptra_im-really-excited-exploring-flutter-firebase-activity-7325348635171319808-ZQSU?utm_source=share&utm_medium=member_desktop&rcm=ACoAAEtekLoB_QN471UJikKqfqafxJiRYzgipr4',
                );
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(
                        "Ada kesalahan, Coba lagi",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                }
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
                    const SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(
                        "Ada kesalahan, Coba lagi",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                }
              },
            ),
            _SocialIcon(
              icon: FontAwesomeIcons.linkedin,
              tooltip: "linkedin",
              onPressed: () async {
                final url = Uri.parse("https://www.linkedin.com/in/fhrisptra/");
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(
                        "Ada kesalahan, Coba lagi",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                }
              },
            ),
            _SocialIcon(
              icon: FontAwesomeIcons.whatsapp,
              tooltip: "WhatsApp",
              onPressed: () async {
                final message = 'Bisa bantu saya?';
                final encoded = Uri.encodeComponent(message);
                final uri = Uri.parse(
                  "https://wa.me/6285756956510?text=$encoded",
                );
                await launchUrl(uri, mode: LaunchMode.externalApplication);
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

class _SocialIcon extends StatefulWidget {
  final IconData icon;
  final String tooltip;
  final VoidCallback onPressed;

  const _SocialIcon({
    required this.icon,
    required this.tooltip,
    required this.onPressed,
  });

  @override
  State<_SocialIcon> createState() => _SocialIconState();
}

class _SocialIconState extends State<_SocialIcon> {
  double _scale = 1.0;
  bool _isHovered = false;

  void _onTapDown(TapDownDetails _) {
    setState(() => _scale = 0.9);
  }

  void _onTapUp(TapUpDetails _) {
    setState(() => _scale = _isHovered ? 1.05 : 1.0);
  }

  void _onTapCancel() {
    setState(() => _scale = _isHovered ? 1.05 : 1.0);
  }

  void _onHoverEnter(PointerEnterEvent event) {
    setState(() {
      _isHovered = true;
      _scale = 1.05;
    });
  }

  void _onHoverExit(PointerExitEvent event) {
    setState(() {
      _isHovered = false;
      _scale = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _onHoverEnter,
      onExit: _onHoverExit,
      cursor: SystemMouseCursors.click,
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: 1.0, end: _scale),
        duration: const Duration(milliseconds: 150),
        builder: (context, scale, child) {
          return Transform.scale(scale: scale, child: child);
        },
        child: InkWell(
          borderRadius: BorderRadius.circular(50),
          onTap: widget.onPressed,
          onTapDown: _onTapDown,
          onTapUp: _onTapUp,
          onTapCancel: _onTapCancel,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              widget.icon,
              size: 24,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
        ),
      ),
    );
  }
}
