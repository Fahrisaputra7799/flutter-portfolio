// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   ThemeMode _themeMode = ThemeMode.light;

//   void _toggleTheme() {
//     setState(() {
//       _themeMode =
//           _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Personal Portfolio',
//       debugShowCheckedModeBanner: false,
//       themeMode: _themeMode,
//       theme: ThemeData(
//         brightness: Brightness.light,
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: const Color(0xFFF9FAFB),
//         useMaterial3: true,
//       ),
//       darkTheme: ThemeData(
//         brightness: Brightness.dark,
//         scaffoldBackgroundColor: const Color(0xFF1A1A1A),
//         useMaterial3: true,
//       ),
//       home: HomeSection(onToggleTheme: _toggleTheme, themeMode: _themeMode),
//     );
//   }
// }

// class HomeSection extends StatelessWidget {
//   final VoidCallback onToggleTheme;
//   final ThemeMode themeMode;

//   const HomeSection({
//     super.key,
//     required this.onToggleTheme,
//     required this.themeMode,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final isDark = Theme.of(context).brightness == Brightness.dark;

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         actions: [
//           IconButton(
//             icon: Icon(isDark ? Icons.wb_sunny : Icons.nightlight_round),
//             onPressed: onToggleTheme,
//             tooltip: 'Toggle Theme',
//           ),
//         ],
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Container(
//             margin: const EdgeInsets.all(24),
//             padding: const EdgeInsets.all(24),
//             constraints: const BoxConstraints(maxWidth: 600),
//             decoration: BoxDecoration(
//               color: Theme.of(context).cardColor,
//               borderRadius: BorderRadius.circular(24),
//               boxShadow: [
//                 BoxShadow(
//                   color: isDark
//                       ? Colors.black.withOpacity(0.3)
//                       : Colors.black.withOpacity(0.05),
//                   blurRadius: 20,
//                   spreadRadius: 5,
//                 ),
//               ],
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Hi, I’m Fahri Saputra 👋',
//                   style: Theme.of(context).textTheme.headlineMedium?.copyWith(
//                         fontWeight: FontWeight.bold,
//                       ),
//                 ),
//                 const SizedBox(height: 12),
//                 Text(
//                   'I build clean, responsive apps and enjoy solving real-world problems through code. Passionate about mobile development and open source.',
//                   style: Theme.of(context).textTheme.bodyLarge,
//                 ),
//                 const SizedBox(height: 32),
//                 Text(
//                   'About Me',
//                   style: Theme.of(context).textTheme.titleLarge?.copyWith(
//                         fontWeight: FontWeight.bold,
//                       ),
//                 ),
//                 const SizedBox(height: 12),
//                 Text(
//                   'I started by helping small businesses build their apps. Since then, I’ve created food ordering systems, dashboards, and more—focusing on performance and scalability. I mainly use Flutter and Firebase and always explore new tools to grow.',
//                   style: Theme.of(context).textTheme.bodyMedium,
//                 ),
//                 const SizedBox(height: 40),
//                 Center(
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: isDark ? Colors.white : Colors.black,
//                       foregroundColor: isDark ? Colors.black : Colors.white,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 24,
//                         vertical: 12,
//                       ),
//                     ),
//                     onPressed: () {
//                       // Aksi kontak
//                     },
//                     child: const Text(
//                       'Get in Touch',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 24),
//                 Center(
//                   child: RichText(
//                     textAlign: TextAlign.center,
//                     text: TextSpan(
//                       style: TextStyle(
//                         color: Theme.of(context).textTheme.bodyLarge?.color,
//                         fontSize: 14,
//                       ),
//                       children: [
//                         const TextSpan(text: 'By using this app, you agree to our '),
//                         TextSpan(
//                           text: 'Terms of Service',
//                           style: const TextStyle(
//                             color: Colors.blue,
//                             decoration: TextDecoration.underline,
//                           ),
//                           recognizer: TapGestureRecognizer()
//                             ..onTap = () {
//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 const SnackBar(
//                                     content: Text('Terms of Service clicked')),
//                               );
//                             },
//                         ),
//                         const TextSpan(text: ' and '),
//                         TextSpan(
//                           text: 'Privacy Policy',
//                           style: const TextStyle(
//                             color: Colors.blue,
//                             decoration: TextDecoration.underline,
//                           ),
//                           recognizer: TapGestureRecognizer()
//                             ..onTap = () {
//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 const SnackBar(
//                                     content: Text('Privacy Policy clicked')),
//                               );
//                             },
//                         ),
//                         const TextSpan(text: '.'),
//                       ],
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 32),
//                 Divider(color: Colors.grey.shade400),
//                 const SizedBox(height: 16),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     _buildSocialIcon(FontAwesomeIcons.github),
//                     _buildSocialIcon(FontAwesomeIcons.linkedin),
//                     _buildSocialIcon(FontAwesomeIcons.instagram),
//                     _buildSocialIcon(FontAwesomeIcons.whatsapp),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildSocialIcon(IconData iconData) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 12),
//       child: IconButton(
//         icon: FaIcon(iconData),
//         onPressed: () {
//           // Tambahkan URL ke profil sosial media
//         },
//         iconSize: 24,
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KodingWorksPage extends StatelessWidget {
  const KodingWorksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 700),
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
                              "Hi, We're",
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "KodingWorks 👋",
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              "Software Agency based in Indonesia. We love building things and helping people. Love Open Source.",
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                        const Chip(label: Text("Contact")),
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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSocialIcon(FontAwesomeIcons.github),
                      _buildSocialIcon(FontAwesomeIcons.linkedin),
                      _buildSocialIcon(FontAwesomeIcons.instagram),
                      _buildSocialIcon(FontAwesomeIcons.whatsapp),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSocialIcon(IconData iconData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: IconButton(
        icon: FaIcon(iconData),
        onPressed: () {
          // Tambahkan URL ke profil sosial media
        },
        iconSize: 24,
      ),
    );
  }
}

