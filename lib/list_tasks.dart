library list_tasks;

import 'package:angular2/angular2.dart';
import 'package:dangdays/task.dart' show Task;
import 'package:dangdays/sharetasks.dart' show tasks;

@Component(selector: 'list-tasks')

@View(
  templateUrl: '../web/views/listtasks.html',
  directives: const[NgFor]
)


class ListTasks {
  List<Task> tasklist = tasks;
}
