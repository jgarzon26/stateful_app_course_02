import 'package:flutter/material.dart';
import 'package:stateful_app_course_02/api_provider.dart';
import 'package:stateful_app_course_02/screens/home/widgets/date_time.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ValueKey _textKey = const ValueKey<String?>(null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          ApiProvider.of(context).api.dateAndTime ?? '',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: GestureDetector(
        onTap: () async {
          final api = ApiProvider.of(context).api;
          final currentDateTime = await api.getCurrentDateAndTime();
          setState(() {
            _textKey = ValueKey(currentDateTime);
          });
        },
        child: SizedBox.expand(
          child: DateTimeWidget(key: _textKey),
        ),
      ),
    );
  }
}