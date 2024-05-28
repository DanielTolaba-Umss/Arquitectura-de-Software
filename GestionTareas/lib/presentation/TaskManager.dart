import '../business_logic/Task.dart';
import '../business_logic/TaskService.dart';
import 'UserInteraction.dart';

class TaskManager {
  final TaskService _taskService;
  final UserInteraction _userInteraction;

  TaskManager(this._taskService, this._userInteraction);

  void addTask() {
    print('Enter Task ID:');
    var id = _userInteraction.prompt('');
    print('Enter Task Title:');
    var title = _userInteraction.prompt('');
    print('Enter Task Description:');
    var description = _userInteraction.prompt('');

    var task = Task(id: id, title: title, description: description);
    _taskService.addTask(task);
  }

  void viewTask() {
    print('Enter Task ID:');
    var id = _userInteraction.prompt('');

    var task = _taskService.getTask(id);
    if (task.id.isNotEmpty) {
      print('Task ID: ${task.id}');
      print('Task Title: ${task.title}');
      print('Task Description: ${task.description}');
    } else {
      print('Task not found.');
    }
  }

  void viewAllTasks() {
    var tasks = _taskService.getAllTasks();
    for (var task in tasks) {
      print('ID: ${task.id}');
      print('Title: ${task.title}');
      print('Description: ${task.description}');
      print('-------------------------');
    }
  }
}
