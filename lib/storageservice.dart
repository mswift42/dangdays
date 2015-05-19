library storageservice;

import 'package:dangdays/task.dart' show Task, fromJson;
import 'package:dangdays/sharetasks.dart' as st;
import 'dart:convert';
import 'dart:html';

final String STORAGE_KEY = 'dangdays';


// add a task to tasklist. JSON encode and store said list
// to localstorage.
void saveToStorage(item) {
  st.addTask(item);
  window.localStorage[STORAGE_KEY] = JSON.encode(st.allTasks());
}

// load the under key STORAGE_KEY stored tasklist,
// then set the tasklist in the sharetask service to said list.
void loadFromStorage() {
  if (window.localStorage.containsKey(STORAGE_KEY)) {
    List<Task> tasks = [];
    List stored = JSON.decode(window.localStorage[STORAGE_KEY]);
    stored.forEach((i) {
          Task t = new Task.fromJson(i);
          tasks.add(t);
        });
     st.setTasks(tasks);
  }
}

// delete the task in stored tasklist, which timestamp is identical
// to the given task.
void deleteTaskInStorage(Task task) {
  var sl = st.allTasks().where((i) => i.timestamp != task.timestamp);
  window.localStorage[STORAGE_KEY] = JSON.encode(sl);
  st.setTasks(sl);
}
// edit a in localstorage stored task.
void editTaskInStorage(Task task) {
  var sl = st.allTasks();
  sl.forEach((i) {
    if (i.timestamp == task.timestamp) {
      i.summary = task.summary;
      i.scheduled = task.scheduled;
    }
  });
  st.setTasks(sl);
  window.localStorage[STORAGE_KEY] = JSON.encode(sl);
}

// clear localStorage
void deleteStorage() {
  window.localStorage.clear();
}