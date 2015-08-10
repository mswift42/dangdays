import 'package:test/test.dart';
import 'package:dangdays/task.dart';

void main() {
  test('Task instances are constructed correctly', () {
    Task t1 = new Task('task1');
    expect(t1.summary, 'task1');
    expect(t1.scheduled, null);
    expect((t1.timestamp > 0) , true);
    DateTime d1 = new DateTime.now();
    Task t2 = new Task('task2', d1);
    expect(t2.summary, 'task2');
    expect(t2.scheduled, isNotNull);
    expect((t2.timestamp != t2.scheduled), true);
    expect(t1.done, false);
    expect(t2.done, false);
  });
  test('fromJson constructs new Tasks from JSON objects', () {
    var t1 = {'summary' : 'task1', 'scheduled' : 'null',
    "done": false};
    Task task1 = new Task.fromJson(t1);
    expect(task1.summary, 'task1');
    expect(task1.scheduled, null);
    expect(task1.done, false);
  });
}
