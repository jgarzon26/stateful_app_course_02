import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = 'Tap the screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            title = DateTime.now().toString();
          });
        },
      ),
    );
  }
}