import 'package:flutter/material.dart';
import 'repository/gallery_data.dart';

class SlideshowScreen extends StatefulWidget {
  @override
  _SlideshowScreenState createState() => _SlideshowScreenState();
}

class _SlideshowScreenState extends State<SlideshowScreen> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _startSlideshow();
  }

  void _startSlideshow() {
    Future.delayed(Duration(seconds: 5), () {
      if (mounted) {
        setState(() {
          _currentIndex = (_currentIndex + 1) % galleryItems.length;
        });
        _startSlideshow();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentImage = galleryItems[_currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text('Slideshow'),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 107, 9, 132),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(16, 0, 8, 8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  currentImage.imagePath,
                  fit: BoxFit.cover,
                  width: 400,
                  height: 400,
                ),
              ),
              SizedBox(height: 8),
              Text(
                currentImage.imageTitle,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                currentImage.imageDate,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 8),
              Text(
                currentImage.imageDescription,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
