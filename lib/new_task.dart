library new_task;

import 'package:angular2/angular2.dart';
import 'package:dangdays/task.dart' show Task;
import 'package:dangdays/storageservice.dart' show saveToStorage;
import 'dart:html';

@Component(selector: 'new-task')

@View(
templateUrl: '../views/newtask.html'
)

class NewTask {
  saveTask(KeyboardEvent event) {
    if (event.keyCode == KeyCode.ENTER) {
      InputElement e = event.target;
      addTask(e.value);
      e.value = null;
    }
  }
  void addTask(String summary) {
    Task t = new Task(summary);
    saveToStorage(t);
  }
}

