library storageservice;

import 'package:dangdays/task.dart' show Task, fromJson;
import 'dart:convert'

final String STORAGE_KEY = 'dangdays';

List<Task> tasklist = [];

// add a task to tasklist. JSON encode and store said list
// to localstorage.
void saveToStorage(Task task) {
  tasklist.add(task);
  window.localStorage[STORAGE_KEY] = JSON.encode(tasklist);
}

// load the under key STORAGE_KEY stored tasklist.
List<Task> loadFromStorage() {
  if (window.localStorage.containsKey(STORAGE_KEY)) {
    List<Task> tasks = [];
    List stored = JSON.decode(window.localStorage[STORAGE_KEY]);
    stored.forEach((i) {
          Task t = new Task.fromJson(i);
          tasks.add(t);
        });
    return tasks;
  }
  return [];
}

// delete the task in stored tasklist, which timestamp is identical
// to the given task.
void deleteTaskInStorage(Task task) {
  var sl = loadFromStorage().where((i) => i.timestamp != task.timestamp);
  window.localStorage[STORAGE_KEY] = JSON.encode(sl);
}