import 'package:agrisphere/app/theme/app_theme.dart';
import 'package:agrisphere/features/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';

class AgriSphereApp extends StatelessWidget {
  const AgriSphereApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AgriSphere',
      theme: AppTheme.light,
      home: const HomeScreen(),
    );
  }
}
