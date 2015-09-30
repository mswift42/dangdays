// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.



import 'package:angular2/angular2.dart';
import 'package:dangdays/components/new_task.dart';
import 'package:dangdays/components/list_tasks.dart';
import 'package:dangdays/storageservice.dart' show loadFromStorage;

import 'package:angular2/bootstrap.dart';

void main() {
  loadFromStorage();
  bootstrap(NewTask);
  bootstrap(ListTasks);
}
