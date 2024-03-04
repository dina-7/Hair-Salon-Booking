import 'package:flutter/material.dart';

class NailsCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tips&Tricks: Nails Category'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/nails.jpg',
              width: 500,
              height: 300,
            ),
            SizedBox(height: 20),
            Text(
              '1. Keep Nails Hydrated: Moisturize your nails and cuticles regularly to prevent them from becoming dry and brittle.\n\n'
              '2. Trim and File Regularly: Trim your nails straight across and use a nail file to shape and smooth the edges. Avoid using metal files which can cause nail damage.\n\n'
              '3. Protect Your Nails: Wear gloves while doing household chores or working with harsh chemicals to protect your nails from damage and discoloration.\n\n'
              '4. Use Nail Strengthener: Apply a quality nail strengthener to help reinforce and protect your nails from breaking or splitting.\n\n'
              '5. Healthy Diet and Hydration: Maintain a balanced diet rich in vitamins and minerals, and stay hydrated. Nutrients like biotin and vitamins A, C, and E contribute to healthy nails.\n\n',
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
