import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/DI/injection.dart';
import 'app/app_widget.dart';

void main() {
  configureInjection(Env.prod);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(const IMDBApp());
}
