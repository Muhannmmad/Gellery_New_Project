import 'package:flutter/material.dart';

void main() {
  runApp(MyGalleryApp());
}

class MyGalleryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 98, 0, 57),
        title: Text('MyGallery'),
        foregroundColor: Colors.white,
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      body: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
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
}
