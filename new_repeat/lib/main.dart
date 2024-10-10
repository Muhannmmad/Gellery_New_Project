import 'package:flutter/material.dart';
import 'package:new_repeat/features/my_gallery_app_state.dart';
import 'package:new_repeat/screens/about_me_screen.dart';
import 'package:new_repeat/screens/detail_screen.dart';
import 'repository/gallery_data.dart';

void main() {
  runApp(MyGalleryApp());
}

class MyGalleryApp extends StatefulWidget {
  @override
  MyGalleryAppState createState() => MyGalleryAppState();
}

class GalleryScreen extends StatelessWidget {
  final VoidCallback onToggleTheme;

  GalleryScreen({required this.onToggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyGallery'),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 107, 9, 132),
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6), // Icon to toggle light/dark mode
            onPressed: onToggleTheme,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1,
          ),
          itemCount: galleryItems.length,
          itemBuilder: (context, index) {
            final item = galleryItems[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(item: item),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        item.imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    item.imageTitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            label: 'Bilder',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Über mich',
          ),
        ],
        selectedItemColor: const Color.fromARGB(255, 76, 2, 58),
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutMeScreen()),
            );
          } else if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      GalleryScreen(onToggleTheme: onToggleTheme)),
            );
          }
        },
      ),
    );
  }
}
