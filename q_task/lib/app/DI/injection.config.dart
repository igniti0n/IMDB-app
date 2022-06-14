// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../common/hive/hive_wrapper.dart' as _i5;
import '../../common/network/flavor_config.dart' as _i4;
import '../../common/network/network_info.dart' as _i6;
import '../../remote_sources/movies_source/movies_api_service.dart' as _i7;
import 'main_module.dart' as _i8;

const String _stage = 'stage';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final mainModule = _$MainModule();
  gh.lazySingleton<_i3.Connectivity>(() => mainModule.connectivity);
  gh.factory<_i4.FlavorConfig>(() => _i4.FlavorStage(), registerFor: {_stage});
  gh.factory<_i4.FlavorConfig>(() => _i4.FlavorProd(), registerFor: {_prod});
  gh.lazySingleton<_i5.HiveWrapper>(() => _i5.HiveWrapperImpl());
  gh.lazySingleton<_i6.NetworkInfo>(
      () => _i6.NetworkInfoImpl(get<_i3.Connectivity>()));
  gh.factory<_i7.DevicesApiService>(
      () => _i7.DevicesApiServiceImpl(get<_i4.FlavorConfig>()));
  return get;
}

class _$MainModule extends _i8.MainModule {}
