import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import 'app/DI/injection.dart';
import 'app/app_widget.dart';
import 'local_sources/favourites_source/favourites_cache_service.dart';
import 'local_sources/models/movie_db.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(MovieDbAdapter());
  await Hive.openBox(FavouritesCacheDataSource.favouritesCacheBoxName);
  configureInjection(Env.stage);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  runApp(const IMDBApp());
}
