library list_tasks;

import 'package:angular2/angular2.dart';
import '../task.dart' show Task;
import '../sharetasks.dart' show tasks;

@Component(selector: 'list-tasks')

@View(
  templateUrl: 'listtasks.html',
  directives: const[NgFor]
)


class ListTasks {
  List<Task> tasklist = tasks;

  void addTask(Task task) {
    tasklist.add(task);
  }
}
