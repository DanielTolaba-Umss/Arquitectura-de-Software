import 'TaskRepository.dart';
import '../business_logic/Task.dart';

class TaskRepositoryImpl implements TaskRepository {
  static TaskRepositoryImpl? _instance;

  // Constructor privado para evitar la creación de instancias fuera de la clase
  TaskRepositoryImpl._();

  // Método factory para obtener la instancia única
  factory TaskRepositoryImpl() {
    _instance ??= TaskRepositoryImpl
        ._(); // Si _instance es null, crea una nueva instancia
    return _instance!; // Devuelve la instancia existente o recién creada
  }

  List<Task> _tasks = [];

  @override
  void addTask(Task task) {
    _tasks.add(task);
  }

  @override
  Task getTask(String id) {
    return _tasks.firstWhere((task) => task.id == id,
        orElse: () => Task(id: '', title: '', description: ''));
  }

  @override
  List<Task> getAllTasks() {
    return List<Task>.from(_tasks);
  }
}
