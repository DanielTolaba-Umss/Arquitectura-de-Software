import 'dart:io';

class UserInteraction {
  String prompt(String message) {
    stdout.write(message);
    return stdin.readLineSync() ?? '';
  }
}
