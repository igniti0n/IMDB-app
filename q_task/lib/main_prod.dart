import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'app/DI/injection.dart';
import 'app/app_widget.dart';
import 'local_sources/models/movie_db.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  Hive.registerAdapter(MovieDbAdapter());
  configureInjection(Env.prod);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(const IMDBApp());
}
