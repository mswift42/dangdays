library new_task;

import '../../packages/angular2/angular2.dart';
import '../task.dart' show Task;
import '../storageservice.dart' show saveToStorage;
import '../sharetasks.dart' show insertTask, tasks, setTasks;
import 'dart:html';

@Component(selector: 'new-task')

@View(
templateUrl: '../web/views/newtask.html'
)

class NewTask {
  saveTask(KeyboardEvent event) {
    if (event.keyCode == KeyCode.ENTER) {
      InputElement e = event.target;
      Task task = new Task(e.value);
      insertTask(task);
      setTasks(tasks);
      print(tasks);
      e.value = null;
    }
  }
  void addTask(String summary) {
    Task t = new Task(summary);
    insertTask(t);
    saveToStorage({'summary' : t.summary,
    'timestamp' : t.timestamp,
    'scheduled' : t.scheduled});
  }
}

