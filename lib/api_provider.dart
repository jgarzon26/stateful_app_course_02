import 'package:flutter/material.dart';
import 'package:stateful_app_course_02/sample_api.dart';
import 'package:uuid/uuid.dart';

class ApiProvider extends InheritedWidget{

  final String uuid;
  final SampleApi api;

  ApiProvider({
    Key? key,
    required Widget child,
    required this.api,
  }) : uuid = const Uuid().v4(),
        super(
          key: key,
          child: child,
        );

  @override
  bool updateShouldNotify(covariant ApiProvider oldWidget) {
    return oldWidget.uuid != uuid;
  }

  static ApiProvider of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<ApiProvider>()!;
}