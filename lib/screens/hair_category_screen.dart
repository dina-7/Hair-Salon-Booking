import 'package:flutter/material.dart';

class HairCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tips&Tricks: Hair Category'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'images/healthyhair.webp',
              width: 500,
              height: 300,
            ),
            SizedBox(height: 20),
            Text(
              '1. Proper washing: Use a mild shampoo and avoid excess shampooing. Rinse with lukewarm water.\n\n'
              '2. Regular trimming: Visit the salon regularly to prevent split ends.\n\n'
              '3. Balanced diet: Consume foods rich in proteins, vitamins (A, C, E), zinc, and iron.\n\n'
              '4. Avoid heat: Limit heat styling tools and use protective products.\n\n'
              '5. Hair care: Use conditioners or masks for hydration. Try weekly deep conditioning.\n\n'
              '6. Avoid harsh treatments: Minimize use of bleach or strong chemicals.',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
