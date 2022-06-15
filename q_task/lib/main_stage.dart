import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/DI/injection.dart';
import 'app/app_widget.dart';

void main() {
  configureInjection(Env.stage);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  runApp(const IMDBApp());
}
