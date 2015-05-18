library list_tasks;

import 'package:angular2/angular2.dart';
import 'package:dangdays/task.dart' show Task;
import 'package:dangdays/storageservice.dart' show loadFromStorage;

@Component(selector: 'list-tasks')

@View(
  templateUrl: '../views/listtasks.html'
)


class ListTasks {
  List<Task> tasks = loadFromStorage();
}