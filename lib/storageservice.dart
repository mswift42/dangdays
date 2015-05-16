library storageservice;

import 'package:dangdays/task.dart' show Task;
import 'dart:convert';

final String STORAGE_KEY = 'dangdays';

List<Task> tasklist = [];

void saveToStorage(Task task) {
  tasklist.add(task);
  window.localStorage[STORAGE_KEY] = JSON.encode(tasklist);
}