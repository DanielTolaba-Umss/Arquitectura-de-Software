import 'TaskManager.dart';

class TaskFacade {
  //final TaskService _taskService;
  final TaskManager _taskManager;
  TaskFacade(this._taskManager);

  void addTask() {
    _taskManager.addTask();
  }

  void viewTask() {
    _taskManager.viewTask();
  }

  void viewAllTasks() {
    return _taskManager.viewAllTasks();
  }
}
