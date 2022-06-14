import 'package:flutter/material.dart';

import 'app/DI/injection.dart';
import 'app/app_widget.dart';

void main() {
  configureInjection(Env.prod);
  runApp(const IMDBApp());
}
