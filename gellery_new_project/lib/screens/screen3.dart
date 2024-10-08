import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Achtung(),
    );
  }
}

class Achtung extends StatelessWidget {
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
              'assets/bike.jpeg',
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
                    'Achtung Kurve',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '18.06.2022',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Eine große Gruppe Rennradfahrer legt sich synchron in eine scharfe Kurve, während sie mit beeindruckender Geschwindigkeit die Strecke entlangrasen. Die bunten Trikots der Fahrer leuchten im Sonnenschein, und ihre Konzentration ist greifbar. Vor einigen Jahren, während eines spannenden Wettkampfs an einem sonnigen Frühlingstag, markierte diese Kurve den Wendepunkt des Rennens und wurde zum Schauplatz eines packenden Duells um die Spitze.',
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
