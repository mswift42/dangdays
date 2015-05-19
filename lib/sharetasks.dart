library sharetasks;

import 'package:dangdays/task.dart' show Task;

List<Task> tasks = [];

void insertTask(Task task) {
  tasks.insert(0, task);
}

List<Task> allTasks() {
  return tasks;
}

void setTasks(List<Task> other) {
  tasks = other;
}

List serializeTasks(List<Task> tasks) {
  List ser = [];
  tasks.forEach((i) {
    ser.add({'summary' : i.summary,
    'timestamp' : i.timestamp,
    'scheduled' : i.scheduled});
  });
  return ser;
}
