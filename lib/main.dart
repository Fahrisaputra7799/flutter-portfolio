import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_portfolio/pages/home_page.dart';
import 'package:flutter_portfolio/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: PortfolioHomePage()));
}

class PortfolioHomePage extends ConsumerStatefulWidget {
  const PortfolioHomePage({super.key});

  @override
  ConsumerState<PortfolioHomePage> createState() => _PortfolioHomePageState();
}

class _PortfolioHomePageState extends ConsumerState<PortfolioHomePage> {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = ref.watch(themeProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fhris App',
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: const Color(0xFFF1F5F9),
        cardColor: Colors.white,
        primaryColor: Colors.blue,
      ),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0F172A),
        cardColor: const Color(0xFF1E293B),
        primaryColor: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
