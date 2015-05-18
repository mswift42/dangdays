import 'package:test/test.dart';
import 'package:dangdays/sharetasks.dart';
import 'package:dangdays/task.dart' show Task;

void main() {
  test('setTasks sets list tasks to the given tasklist', () {
  Task t1 = new Task('task1');
  Task t2 = new Task('task2');
    setTasks([t1,t2]);
    var tl = allTasks();
    expect(t1[0].summary, 'task1');
  });
}
