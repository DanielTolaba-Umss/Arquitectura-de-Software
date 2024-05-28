import 'UserInteraction.dart';

class MenuController {
  final UserInteraction _userInteraction;

  MenuController(this._userInteraction);

  int getMenuChoice(List<String> options) {
    for (var i = 0; i < options.length; i++) {
      print('${i + 1}. ${options[i]}');
    }
    return int.tryParse(_userInteraction.prompt('Enter your choice: ')) ?? -1;
  }
}
