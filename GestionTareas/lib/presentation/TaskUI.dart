import 'MenuController.dart';
import 'TaskFacade.dart';

class TaskUI {
  final MenuController _menuController;
  final TaskFacade _taskFacade; // utilizamos TaskFacade en lugar de TaskManager

  TaskUI(this._menuController, this._taskFacade);

  void showMenu() {
    while (true) {
      var choice = _menuController
          .getMenuChoice(['Add Task', 'View Task', 'View All Tasks', 'Exit']);

      switch (choice) {
        case 1:
          _taskFacade.addTask(); // Utilizamos TaskFacade para agregar una tarea
          break;
        case 2:
          _taskFacade.viewTask(); // Utilizamos TaskFacade para ver una tarea
          break;
        case 3:
          _taskFacade
              .viewAllTasks(); // Utilizamos TaskFacade para ver todas las tareas
          break;
        case 4:
          print('Exiting...');
          return;
        default:
          print('Invalid choice');
          break;
      }
    }
  }
}
