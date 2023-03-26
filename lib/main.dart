import 'package:flutter/material.dart';
import 'package:stateful_app_course_02/api_provider.dart';
import 'package:stateful_app_course_02/sample_api.dart';
import 'package:stateful_app_course_02/screens/home/home.dart';
import 'package:stateful_app_course_02/themes/defaultTheme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: buildDefaultTheme(),
      home: ApiProvider(
          api: SampleApi(),
          child: const HomePage()
      ),
    );
  }
}