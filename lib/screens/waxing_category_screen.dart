import 'package:flutter/material.dart';

class WaxingCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tips&Tricks: Waxing Category'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/waxing.jpg',
              width: 500,
              height: 300,
            ),
            SizedBox(height: 20),
            Text(
              '1. Prepare Your Skin: Exfoliate your skin before depilation to remove dead skin cells and prevent ingrown hairs.\n\n'
              '2. Choose Wisely: Pick a method suitable for your skin type and sensitivity.\n\n'
              '3. Moisturize After Depilation: Apply a soothing moisturizer after hair removal to hydrate the skin and reduce potential irritation.\n\n'
              '4. Avoid Sun Exposure: Protect the depilated area from direct sunlight immediately after hair removal to prevent skin sensitivity or discoloration.\n\n'
              '5. Maintain a Routine: Establish a regular depilation routine to manage hair growth effectively and ensure smoother, long-lasting results.\n\n',
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
