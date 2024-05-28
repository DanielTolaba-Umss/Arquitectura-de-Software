import 'Task.dart';
import 'TaskService.dart';
import '../data_access/TaskRepository.dart';
import 'TaskObserver.dart';

// Clase TaskService con soporte para observadores
class TaskServiceImpl implements TaskService {
  final TaskRepository _taskRepository;
  final List<TaskObserver> _observers = [];

  TaskServiceImpl(this._taskRepository);

  @override
  void addTask(Task task) {
    _taskRepository.addTask(task);
    _notifyObservers(task); // Notifica a todos los observadores
  }

  @override
  Task getTask(String id) {
    return _taskRepository.getTask(id);
  }

  @override
  List<Task> getAllTasks() {
    return _taskRepository.getAllTasks();
  }

  //étodo par Ma registrar un observador
  void addObserver(TaskObserver observer) {
    _observers.add(observer);
  }

  // Método para eliminar un observador
  void removeObserver(TaskObserver observer) {
    _observers.remove(observer);
  }

  // Método para notificar a todos los observadores
  void _notifyObservers(Task task) {
    for (var observer in _observers) {
      observer.onTaskAdded(task);
    }
  }
}
