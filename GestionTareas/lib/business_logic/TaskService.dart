import 'Task.dart';

abstract class TaskService {
  void addTask(Task task);
  Task getTask(String id);
  List<Task> getAllTasks();
}
