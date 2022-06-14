import 'package:injectable/injectable.dart';

import '../../app/DI/injection.dart';

abstract class FlavorConfig {
  String getBaseUrl();
}

@Injectable(as: FlavorConfig, env: [Env.stage])
class FlavorStage extends FlavorConfig {
  @override
  String getBaseUrl() => 'https://api.themoviedb.org/3';
}

@Injectable(as: FlavorConfig, env: [Env.prod])
class FlavorProd extends FlavorConfig {
  @override
  String getBaseUrl() => 'https://api.themoviedb.org/3';
}
