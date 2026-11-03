import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'City Tour',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('City Tour'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Galeri gambar
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://picsum.photos/id/162/300/200',
                        height: 300,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),

                    const SizedBox(width: 16),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://picsum.photos/id/164/300/200',
                        height: 300,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),

                    const SizedBox(width: 16),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://picsum.photos/id/174/300/200',
                        height: 300,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Tagline
              const Text(
                'Explore, Enjoy, Experience.',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              // Deskripsi
              const Text(
                "Explore the charm of our city's hidden gems and embark on a journey to discover the rich cultural heritage, "
                    "breathtaking landscapes, and unique experiences that await you. From historic landmarks to vibrant markets "
                    "and serene natural wonders, our city offers a tapestry of experiences that will captivate your senses. "
                    "Join us in exploring the beauty of our city and create memories that will last a lifetime. Come and visit our city's treasures today.",
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}