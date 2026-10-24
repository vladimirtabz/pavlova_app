import 'package:flutter/material.dart';

void main() => runApp(const PavlovaApp());

class PavlovaApp extends StatelessWidget {
  const PavlovaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pavlova',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFFE91E63),
      ),
      home: const RecipeScreen(),
    );
  }
}

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({super.key});

  static const Color _bgColor = Color(0xFFFFF7FB);
  static const Color _accent = Color(0xFFF2B600);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bgColor,
      appBar: AppBar(
        // Replace "Lastname" with YOUR last name
        title: const Text('Tabudlong_Activity 1'),
        backgroundColor: _bgColor,
        surfaceTintColor: Colors.transparent,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            SizedBox(
              width: double.infinity,
              height: 230,
              child: Image.asset(
                'assets/pavlova.jpg',
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  const Text(
                    'Strawberry Pavlova',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Description
                  const Text(
                    'Pavlova is a meringue-based dessert named after the '
                    'Russian ballerina Anna Pavlova. Pavlova features a crisp '
                    'crust and soft, light inside, topped with fruit and '
                    'whipped cream.',
                    style: TextStyle(fontSize: 13, height: 1.4),
                  ),
                  const SizedBox(height: 14),

                  // Rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 5; i++)
                        Icon(
                          i < 3 ? Icons.star : Icons.star_border,
                          color: _accent,
                          size: 20,
                        ),
                      const SizedBox(width: 8),
                      const Text(
                        '90 Reviews',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Prep / Cook / Feeds
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoColumn(
                        icon: Icons.timer_outlined,
                        label: 'PREP',
                        value: '25 min',
                      ),
                      InfoColumn(
                        icon: Icons.restaurant,
                        label: 'COOK',
                        value: '1 gr',
                      ),
                      InfoColumn(
                        icon: Icons.people_outline,
                        label: 'FEEDS',
                        value: '4-6 hrs',
                      ),
                    ],
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

class InfoColumn extends StatelessWidget {
  const InfoColumn({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: RecipeScreen._accent, size: 28),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
        const SizedBox(height: 2),
        Text(value, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
