library new_task;

import 'package:angular2/angular2.dart';
import 'dart:html';

@Component(selector: 'new-task')

@View(
  templateUrl: '../views/newtask.html'
)

class NewTask {
  document.querySelector('#newtaskform').onSubmit((e) {
        e.preventdefault();
        print(e);
      });
}