import 'package:test/test.dart';
import 'package:dangdays/sharetasks.dart';
import 'package:dangdays/task.dart' show Task;

void main() {
  test('setTasks sets list tasks to the given tasklist', () {
    Task t1 = new Task('task1');
    Task t2 = new Task('task2');
    setTasks([t1, t2]);
    expect(tasks.length,2);
    setTasks([]);
    expect(tasks.length,0);
  });
  test('allTasks lists all tasks.', () {
    Task t1 = new Task('task1');
    Task t2 = new Task('task2');
    setTasks([t1,t2]);
    List<Task> tl = allTasks();
    expect(tl.length, 2);
    expect(tl[0].summary, 'task1');
    expect(tl[1].summary, 'task2');
  });
  test('addTask adds a Task to List tasks', () {
    Task t1 = new Task('task1');
    setTasks([]);
    expect(allTasks().length,0);
    addTask(t1);
    expect(allTasks().length,1);
  });
  test('addTask inserts a Task at index 0', () {
    Task t1 = new Task('task1');
    Task t2 = new Task('task2');
    setTasks([t1]);
    addTask(t2);
    expect(allTasks()[0].summary, 'task2');
    Task t3 = new Task('task3');
    addTask(t3);
    expect(allTasks()[0].summary, 'task3');
    expect(allTasks()[2].summary, 'task1');
  });
}
