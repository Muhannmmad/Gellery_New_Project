import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Sieg(),
    );
  }
}

class Sieg extends StatelessWidget {
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
              'assets/tennis_2.jpeg',
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
                    'Sieg in der Natur',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '02.05.2022',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Eine beeindruckende Drohnenaufnahme zeigt ein Tennisfeld, das idyllisch mitten im Grünen liegt. Das leuchtend grüne Spielfeld kontrastiert wunderschön mit den umgebenden Bäumen und Wiesen. An einem sonnigen Sommertag vor einigen Jahren wurde hier ein Turnier ausgetragen, bei dem Spieler und Zuschauer gleichermaßen die atemberaubende Naturkulisse genossen.',
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
/* imageTitle: 'Sieg in der Natur',
    imageDate: '02.05.2022',
    imageDescription:
        'Eine beeindruckende Drohnenaufnahme zeigt ein Tennisfeld, das idyllisch mitten im Grünen liegt. Das leuchtend grüne Spielfeld kontrastiert wunderschön mit den umgebenden Bäumen und Wiesen. An einem sonnigen Sommertag vor einigen Jahren wurde hier ein Turnier ausgetragen, bei dem Spieler und Zuschauer gleichermaßen die atemberaubende Naturkulisse genossen.',
    imagePath: 'assets/images/tennis_2.jpg',*/