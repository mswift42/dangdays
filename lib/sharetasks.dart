library sharetasks;

import 'package:dangdays/task.dart' show Task;

List<Task> tasks = [];

void addTask(Task task) {
  tasks.insert(0, task);
}

List<Task> allTasks() {
  return tasks;
}
