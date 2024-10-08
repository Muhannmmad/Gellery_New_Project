import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyGallery',
      home: MyGalleryPage(),
    );
  }
}

class MyGalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyGallery"),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 98, 2, 110),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          children: [
            buildImageTile('assets/basketball_1.jpeg', 'Bunter Basketball'),
            buildImageTile('assets/ski.jpeg', 'Adrenalin pur!'),
            buildImageTile('assets/bike.jpeg', 'Achtung Kurve'),
            buildImageTile('assets/running.jpeg', 'Runners High'),
            buildImageTile('assets/basketball_2.jpeg', 'Swish'),
            buildImageTile('assets/tennis_1.jpeg', 'Ball Game'),
            buildImageTile('assets/tennis_2.jpeg', 'Sieg in der Natur'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            label: 'Bilder',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Über mich',
          ),
        ],
      ),
    );
  }

  Widget buildImageTile(String imagePath, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
