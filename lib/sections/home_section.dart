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
          padding: const EdgeInsets.symmetric(vertical: 65, horizontal: 20),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 430),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Hi, I'm Fahri",
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Saputra 👋",
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 12),
                              Text(
                                "Flutter Developer from Indonesia. I build apps, solve problems, and love Open Source.",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        const FlutterLogo(size: 64),
                      ],
                    ),
                    const SizedBox(height: 32),

                    // About
                    const Text(
                      "About",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text.rich(
                      TextSpan(
                        text:
                            "We started as a small company helping people create online stores, leading to our project template, ",
                        children: [
                          TextSpan(
                            text: "Warung.io",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                            text: ". We later explored HR solutions with ",
                          ),
                          TextSpan(
                            text: "BeetleHR",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                            text:
                                " and ventured into blockchain, building a centralized exchange and crypto payment gateway. Our apps are available as SaaS or self-hosted solutions.",
                          ),
                        ],
                      ),
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),

                    const SizedBox(height: 48),

                    // Contact
                    Center(
                      child: Column(
                        children: [
                          const Chip(
                            backgroundColor: Colors.black,
                            label: Text(
                              "Contact",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Get in Touch",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Wrap(
                            alignment: WrapAlignment.center,
                            children: const [
                              Text("Want to chat? Just shoot us a dm "),
                              Text(
                                "with a direct question on WhatsApp",
                                style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Positioned(
                      bottom: 16,
                      left: 16,
                      right: 16,
                      child: Card(
                        color: Colors.white,
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 8,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              HoverIconButton(
                                icon: FontAwesomeIcons.home,
                                onPressed: () {},
                              ),
                              Container(
                                height: 25,
                                width: 1,
                                decoration: BoxDecoration(color: Colors.grey),
                              ),
                              HoverIconButton(
                                icon: FontAwesomeIcons.github,
                                onPressed: () {},
                              ),
                              HoverIconButton(
                                icon: FontAwesomeIcons.instagram,
                                onPressed: () {},
                              ),
                              HoverIconButton(
                                icon: FontAwesomeIcons.linkedin,
                                onPressed: () {},
                              ),
                              HoverIconButton(
                                icon: FontAwesomeIcons.whatsapp,
                                onPressed: () {},
                              ),
                              HoverIconButton(
                                icon: FontAwesomeIcons.lightbulb,
                                onPressed: () {},
                              ),
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
}
