import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider untuk mengontrol status animasi
final fadeInProvider = StateProvider<bool>((ref) => false);

// Provider untuk tema (light/dark mode)
final themeProvider = StateProvider<bool>((ref) {
  return false; // default light mode
});
