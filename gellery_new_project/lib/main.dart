import 'package:flutter/material.dart';
import 'package:gellery_new_project/my_gallery_page.dart';
import 'package:gellery_new_project/screens/profile.dart';
import 'package:gellery_new_project/screens/screen1.dart';
import 'package:gellery_new_project/screens/screen2.dart';
import 'package:gellery_new_project/screens/screen3.dart';
import 'package:gellery_new_project/screens/screen4.dart';
import 'package:gellery_new_project/screens/screen5.dart';
import 'package:gellery_new_project/screens/screen6.dart';
import 'package:gellery_new_project/screens/screen7.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/main': (context) => MyGalleryPage(),
        '/profile': (context) => ProfilePage(),
        '/1': (context) => Bunter(),
        '/2': (context) => Adrenalin(),
        '/3': (context) => Achtung(),
        '/4': (context) => Runners(),
        '/5': (context) => Swish(),
        '/6': (context) => Ball(),
        '/7': (context) => Sieg(),
      },
      title: 'MyGallery',
      home: MyGalleryPage(),
    );
  }
}
