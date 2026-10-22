import 'package:flutter/material.dart';
import 'pages/login_pages/Connexion.dart';

void main() {
  runApp(const MyFirst());
}

class MyFirst extends StatelessWidget {
  const MyFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      home: ConnexionPage()
    );
  }
}
