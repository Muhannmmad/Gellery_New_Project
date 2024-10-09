import 'package:flutter/material.dart';

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
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/1');
              },
              child: buildImageTile(
                  'assets/basketball_1.jpeg', 'Bunter Basketball'),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/2');
              },
              child: buildImageTile('assets/ski.jpeg', 'Adrenalin pur!'),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/3');
              },
              child: buildImageTile('assets/bike.jpeg', 'Achtung Kurve'),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/4');
              },
              child: buildImageTile('assets/running.jpeg', 'Runners High'),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/5');
              },
              child: buildImageTile('assets/basketball_2.jpeg', 'Swish'),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/6');
              },
              child: buildImageTile('assets/tennis_1.jpeg', 'Ball Game'),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/7');
              },
              child:
                  buildImageTile('assets/tennis_2.jpeg', 'Sieg in der Natur'),
            ),
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
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/main'); // Navigate to 'main'
          } else if (index == 1) {
            Navigator.pushNamed(context, '/profile'); // Navigate to 'profile'
          }
        },
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
