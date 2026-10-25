
import 'package:flutter/material.dart';

void main() {
  runApp(const MatchaApp());
}

class MatchaApp extends StatelessWidget {
  const MatchaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Matcha & Co.',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F2DA),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF738A6E),
        ),
        useMaterial3: true,
      ),
      home: const MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF738A6E),
        foregroundColor: Colors.white,
        title: const Text(
          'Matcha & Co.',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: const Icon(Icons.local_cafe),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: const Color(0xFFE1E9D8),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.eco,
                    size: 40,
                    color: Color(0xFF738A6E),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Your little matcha moment.',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF435640),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Freshly made drinks, made with love.',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 28),
            const Text(
              'Our Menu',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color(0xFF435640),
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              'Find your new favourite drink.',
              style: TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 16),

            const MenuItem(
              name: 'Iced Matcha Latte',
              description: 'Creamy matcha with fresh milk',
              price: 'RM 12.00',
              imagePath: 'images/iced_matcha.jpg',
              tag: 'BESTSELLER',
            ),
            const MenuItem(
              name: 'Strawberry Matcha',
              description: 'Sweet strawberry with earthy matcha',
              price: 'RM 14.00',
              imagePath: 'images/strawberry_matcha.jpg',
              tag: 'POPULAR',
            ),
            const MenuItem(
              name: 'Classic Matcha Latte',
              description: 'Smooth and comforting matcha latte',
              price: 'RM 10.00',
              imagePath: 'images/classic_matcha.jpg',
            ),
            const MenuItem(
              name: 'Matcha Frappe',
              description: 'A refreshing blended matcha drink',
              price: 'RM 15.00',
              imagePath: 'images/matcha_frappe.jpg',
            ),

            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: const Color(0xFF738A6E),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 28,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Made for your matcha moments',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Thank you for visiting Matcha & Co.!',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String name;
  final String description;
  final String price;
  final String imagePath;
  final String? tag;

  const MenuItem({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
    this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 14),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagePath,
                width: 82,
                height: 90,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 82,
                    height: 90,
                    color: const Color(0xFFE1E9D8),
                    child: const Icon(
                      Icons.broken_image,
                      size: 36,
                      color: Color(0xFF738A6E),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (tag != null)
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE1E9D8),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        tag!,
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF435640),
                        ),
                      ),
                    ),
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF738A6E),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
