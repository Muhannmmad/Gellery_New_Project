import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyGalleryPage(),
    );
  }
}

class MyGalleryPage extends StatefulWidget {
  @override
  MyGalleryPageState createState() => MyGalleryPageState();
}

class MyGalleryPageState extends State<MyGalleryPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyGallery"),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 98, 2, 110),
      ),
      body: selectedIndex == 0 ? buildImageGrid() : buildAboutMe(),
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

  Widget buildImageGrid() {
    return GridView.count(
      crossAxisCount: 2, // Two columns
      mainAxisSpacing: 0, // No space between rows
      crossAxisSpacing: 0, // No space between columns
      children: [
        buildImageCard('Bunter Basketball', 'assets/basketball_1.jpeg'),
        buildImageCard('Adrenalin pur!', 'assets/ski.jpeg'),
        buildImageCard('Achtung Kurve', 'assets/bike.jpeg'),
        buildImageCard('Runners High', 'assets/running.jpeg'),
        buildImageCard('Swish', 'assets/basketball_2.jpeg'),
        buildImageCard('Ball Game', 'assets/tennis_1.jpeg'),
        buildImageCard('Sieg in der Natur', 'assets/tennis_2.jpeg'),
      ],
    );
  }

  Widget buildImageCard(String title, String imagePath) {
    return Card(
      margin: EdgeInsets.zero, // Removed space between cards
      elevation: 0, // No card shadow
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover, // Ensure the image covers the entire box
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title),
          ),
        ],
      ),
    );
  }

  Widget buildAboutMe() {
    return Center(
      child: Text('Über mich page content'),
    );
  }
}
