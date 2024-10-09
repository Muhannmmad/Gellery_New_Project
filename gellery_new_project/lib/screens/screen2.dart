import 'package:flutter/material.dart';

class Adrenalin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 98, 2, 110),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/ski.jpeg',
              width: double.infinity,
              height: 600,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Adrenalin pur!",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "14.07.2020",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Ein Skifahrer in voller Montur fliegt mutig über einen schneebedeckten Hügel, "
                    "während der klare, blaue Himmel im Hintergrund strahlt. Die Sonne scheint hell, "
                    "beleuchtet die funkelnden Schneeflocken und erzeugt eine Szenerie voller Adrenalin und Freiheit. "
                    "Der Moment, in dem der Fahrer die Schwerkraft überwindet, wird in einem spektakulären Bild festgehalten.",
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
