import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 20),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/profile.jpg'), // ganti foto
          ),
          const SizedBox(height: 20),
          const Text(
            'Fahri Saputra',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Flutter Developer',
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 12,
            children: [
              ElevatedButton(
                onPressed: () async {
                  final Uri cvUrl = Uri.parse('https://yourcv.com');
                  if (await canLaunchUrl(cvUrl)) {
                    launchUrl(cvUrl);
                  }
                },
                child: const Text('Download CV'),
              ),
              OutlinedButton(
                onPressed: () async {
                  final Uri email = Uri.parse('mailto:fahri@email.com');
                  if (await canLaunchUrl(email)) {
                    launchUrl(email);
                  }
                },
                child: const Text('Contact Me'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
