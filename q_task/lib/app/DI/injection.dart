import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureInjection(String environment) {
  $initGetIt(getIt, environment: environment);
}

abstract class Env {
  static const stage = 'stage';
  static const prod = 'prod';
}
