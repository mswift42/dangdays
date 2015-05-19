library list_tasks;

import 'package:angular2/angular2.dart';
import 'package:dangdays/task.dart' show Task;
import 'package:dangdays/sharetasks.dart' show allTasks;

@Component(selector: 'list-tasks')

@View(
  templateUrl: '../views/listtasks.html',
  directives: const[For]
)


class ListTasks {
  List<Task> tasks = allTasks();
}