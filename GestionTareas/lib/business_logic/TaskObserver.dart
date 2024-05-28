import 'Task.dart';

// Define la interfaz TaskObserver
abstract class TaskObserver {
  void onTaskAdded(Task task);
}
