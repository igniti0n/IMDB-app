import 'package:injectable/injectable.dart';
import 'package:connectivity/connectivity.dart';

@module
abstract class MainModule {
  @lazySingleton
  Connectivity get connectivity => Connectivity();
}
