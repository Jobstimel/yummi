import 'package:flutter/material.dart';
import 'package:yummi/constants.dart';

class InspirationPage extends StatefulWidget {
  const InspirationPage({super.key});

  @override
  State<InspirationPage> createState() {
    return _InspirationPageState();
  }
}

class _InspirationPageState extends State<InspirationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Inspiration",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/food_generic.jpeg",
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Nudeln mit Tomatensoße",
              style: TextStyle(
                color: Constants.PRIMARY_COLOR,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Text(
              "vor 15 Tagen",
              style: TextStyle(
                color: Constants.SUBTITLE_COLOR,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
