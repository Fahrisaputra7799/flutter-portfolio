import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../sections/about_section.dart';
import '../sections/contact_section.dart';
import '../sections/header_section.dart';
import '../sections/social_section.dart';
import '../providers.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _fadeIn;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _fadeIn = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    _controller.forward();

    // Set state provider untuk animasi
    Future.delayed(const Duration(milliseconds: 500), () {
      ref.read(fadeInProvider.notifier).state = true;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final fadeIn = ref.watch(fadeInProvider).state;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 65, horizontal: 20),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: FadeTransition(
              opacity: _fadeIn,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HeaderSection(),
                    const SizedBox(height: 40),
                    const AboutSection(),
                    const SizedBox(height: 48),
                    const Center(child: ContactSection()),
                    const SizedBox(height: 40),
                    const Center(child: SocialSection()),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
