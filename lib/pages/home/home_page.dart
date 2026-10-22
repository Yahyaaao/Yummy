import 'package:flutter/material.dart';
import 'package:my_first/pages/login_pages/Connexion.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String searchText = '';
  List<String> restaurant = ['Italian', 'Moroccan', 'Asian', 'Burger', 'Drink'];
  @override
  Widget build(BuildContext context) {
    List<String> suggestions = restaurant
        .where(
          (restaurant) =>
              restaurant.toLowerCase().contains(searchText.toLowerCase()),
        )
        .toList();

    return Scaffold(
      backgroundColor: const Color(0xFF111113),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFE5A93C),
                        ),
                        child: const Icon(
                          Icons.restaurant,
                          size: 18,
                          color: Color(0xFF111113),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'GOURMET ELITE',
                        style: TextStyle(
                          color: Color(0xFFD4AF37),
                          fontSize: 11,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 55),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFE5A93C),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.person),
                        iconSize: 18,
                        color: Color(0xFF111113),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    searchText = value;
                  });
                },
                decoration: InputDecoration(
                  
                  hintText: 'Recherche',
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.search, color: Colors.white),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 253, 253, 253),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
