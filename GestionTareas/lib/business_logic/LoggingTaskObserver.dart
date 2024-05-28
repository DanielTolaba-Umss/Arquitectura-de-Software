import 'Task.dart';
import 'TaskObserver.dart';

// Ejemplo de implementación de un observador
class LoggingTaskObserver implements TaskObserver {
  @override
  void onTaskAdded(Task task) {
    print('New task added: ${task.title}');
  }
}
