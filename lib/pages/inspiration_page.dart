import 'package:flutter/material.dart';

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
      body: Text(
        "InspirationPage",
      ),
    );
  }
}
