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
      body: Center(
        child: GridView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          itemCount: 4,
          itemBuilder: (ctx, i) {
            return Card(
              child: Container(
                height: 290,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Image.network(
                            'https://tech.pelmorex.com/wp-content/uploads/2020/10/flutter.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text(
                          'Title',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Subtitle',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.0,
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 5,
            mainAxisExtent: 264,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Gallery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'About Me',
          ),
        ],
      ),
    );
  }
}
