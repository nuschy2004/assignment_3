import 'package:flutter/material.dart';
import 'home_page.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color mauve = Color.fromARGB(255, 164, 103, 124);
    const Color lightPink = Color(0xFFFCEEF2);
    const Color darkMauve = Color(0xFF75465A);

    return Scaffold(
      backgroundColor: lightPink,
      appBar: AppBar(
        title: const Text(
          'Welcome',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: mauve,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFCEEF2), Color(0xFFF5DCE5), Color(0xFFE8C4D1)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 35),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: mauve,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: darkMauve.withValues(alpha: 0.2),
                        blurRadius: 20,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.favorite_rounded,
                    color: Colors.white,
                    size: 75,
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Welcome to My App',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: darkMauve,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'A little space made with love.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: darkMauve),
                ),
                const SizedBox(height: 35),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.8),
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                        color: darkMauve.withValues(alpha: 0.1),
                        blurRadius: 15,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: const Column(
                    children: [
                      Icon(Icons.auto_awesome_rounded, color: mauve, size: 35),
                      SizedBox(height: 12),
                      Text(
                        'Explore Something Beautiful',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: darkMauve,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Tap the button below to visit your homepage.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: darkMauve),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.home_rounded),
                    label: const Text(
                      'Go to Homepage',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: mauve,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 4,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
