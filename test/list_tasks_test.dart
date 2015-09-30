import 'package:test/test.dart';
import 'dart:html';
import 'package:dangdays/components/list_tasks.dart';
import 'package:angular2/angular2.dart';

import 'package:angular2/src/reflection/reflection.dart' show reflector;
import 'package:angular2/src/reflection/reflection_capabilities.dart' show ReflectionCapabilities;


void main() {
  reflector.reflectionCapabilities = new ReflectionCapabilities();
  bootstrap(ListTasks);
}