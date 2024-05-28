import '../business_logic/Task.dart';

abstract class TaskRepository {
  void addTask(Task task);
  Task getTask(String id);
  List<Task> getAllTasks();
}
