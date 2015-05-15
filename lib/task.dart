library task;

class Task {
  String summary;
  DateTime scheduled;
  int timestamp;
  Set<String> taskcategories = new Set();

  Task(this.summary, [this.scheduled = null]) {
    this.timestamp = new DateTime.now().millisecondsSinceEpoch;
  }
  Task.fromJson(json) {
    Map data = json;
    summary = data['summary'];
    timestamp = data['timestamp'];
    scheduled = data['scheduled'];
  }
}
