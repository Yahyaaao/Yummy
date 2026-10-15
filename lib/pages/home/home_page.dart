import 'package:flutter/material.dart';
import 'package:my_first/pages/login_pages/Connexion.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111113),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A1A1D),
        title: const Text("Home", style: TextStyle(color: Color(0xFFE5A93C))),
      ),
    );
  }
}
