import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0), // Padding untuk spasi kiri dan kanan
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Bagian Teks
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Teks pengenalan diri
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Hi, I'm ",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1E293B),
                        ),
                      ),
                      TextSpan(
                        text: "Fahri Saputra 👋",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1E293B),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16), // Memberikan jarak yang lebih besar antara judul dan deskripsi
                Text(
                  "Flutter Developer from Indonesia. I build apps, solve problems, and love Open Source.",
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.7,
                    color: Color(0xFF64748B), // abu kebiruan seperti iOS subtitle
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 24), // Jarak antara teks dan logo

          // Logo Flutter di sebelah kanan
          const FlutterLogo(size: 80), // Ukuran logo sedikit lebih besar agar proporsional
        ],
      ),
    );
  }
}
