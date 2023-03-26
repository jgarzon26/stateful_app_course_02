import 'package:uuid/uuid.dart';

class SampleApi{

  String? _dateAndTime;

  String get dateAndTime => _dateAndTime!;

  Future<String> getCurrentDateAndTime() async {
    return Future.delayed(
        const Duration(seconds: 2),
        () => DateTime.now().toString(),
    ).then((value) {
      _dateAndTime = value;
      return value;
    });
  }
}