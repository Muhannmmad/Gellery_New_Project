import 'package:flutter/material.dart';
import 'package:new_repeat/main.dart';

class MyGalleryAppState extends State<MyGalleryApp> {
  ThemeMode themeMode = ThemeMode.light; // Default to light mode

  void toggleTheme() {
    setState(() {
      themeMode =
          themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyGallery',
      theme: ThemeData.light(), // Light theme
      darkTheme: ThemeData.dark(), // Dark theme
      themeMode: themeMode, // Switch between dark and light
      home:
          GalleryScreen(onToggleTheme: toggleTheme), // Pass the toggle function
    );
  }
}
