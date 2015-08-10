library task;

class Task {
  String summary;
  DateTime scheduled;
  int timestamp;
  Set<String> taskCategories = new Set();
  bool done;

  Task(this.summary, [this.scheduled = null]) {
    this.timestamp = new DateTime.now().millisecondsSinceEpoch;
    this.done = false;
  }
  Task.fromJson(json) {
    Map data = json;
    summary = data['summary'];
    timestamp = data['timestamp'];
    var sched = data['scheduled'];
    scheduled = (sched == 'null') ? null : sched;
    done = data['done'];
  }
}
