import 'lib/data_access/TaskRepositoryImpl.dart';
import 'lib/presentation/TaskUI.dart';
import 'lib/business_logic/TaskServiceImpl.dart';
import 'lib/presentation/UserInteraction.dart';
import 'lib/presentation/MenuController.dart';
import 'lib/presentation/TaskManager.dart';
import 'lib/business_logic/LoggingTaskObserver.dart';
import 'lib/presentation/TaskFacade.dart';

void main() {
  var taskRepository = TaskRepositoryImpl();
  var taskService = TaskServiceImpl(taskRepository);
  var userInteraction = UserInteraction();
  var menuController = MenuController(userInteraction);
  var taskManager = TaskManager(taskService, userInteraction);
  var taskFacade = TaskFacade(taskManager); // Crear una instancia de TaskFacade

  // Creamos una instancia del observador y la registramos en el servicio de tareas
  var loggingObserver = LoggingTaskObserver();
  taskService.addObserver(loggingObserver);

  var taskUI = TaskUI(menuController, taskFacade);

  taskUI.showMenu();
}
