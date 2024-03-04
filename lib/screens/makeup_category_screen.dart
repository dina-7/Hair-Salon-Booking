import 'package:flutter/material.dart';

class MakeupCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tips&Tricks: Makeup Category'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/makeup.jpg',
              width: 500,
              height: 300,
            ),
            SizedBox(height: 20),
            Text(
              '1. Skin Preparation: Regular cleansing, moisturizing, and using primer before applying makeup helps prepare the skin.\n\n'
              '2. Choosing Foundation: Find the right shade and texture of foundation that suits your skin type.\n\n'
              '3. Highlight One Feature: Focus on either eyes or lips to achieve a balanced makeup look.\n\n'
              '4. Blending is Key: Properly blend makeup products for a natural appearance.\n\n'
              '5. Adapt Makeup to Occasion: Different events call for different makeup styles.\n\n'
              '6. Remove Makeup Before Sleeping: Thoroughly remove makeup to maintain skin health.',
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
