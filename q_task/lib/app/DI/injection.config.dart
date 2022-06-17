// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../common/network/flavor_config.dart' as _i4;
import '../../common/network/network_info.dart' as _i9;
import '../../features/favourites_list/domain/repositories/favourites_repository.dart'
    as _i11;
import '../../features/favourites_list/domain/usecases/fetch_favourites_usecase.dart'
    as _i12;
import '../../features/favourites_list/domain/usecases/toggle_favourite_usecase.dart'
    as _i14;
import '../../features/favourites_list/ui/blocs/bloc/favourites_bloc.dart'
    as _i15;
import '../../features/home/cubit/navigation_bar_cubit_cubit.dart' as _i8;
import '../../features/movies_list/doman/repositories/movies_repository.dart'
    as _i13;
import '../../features/movies_list/doman/usecases/fetch_movies_usecase.dart'
    as _i16;
import '../../features/movies_list/ui/blocs/bloc/popular_movies_bloc.dart'
    as _i17;
import '../../local_sources/favourites_source/favourites_cache_service.dart'
    as _i10;
import '../../local_sources/hive_wrapper.dart' as _i5;
import '../../local_sources/movies_source/movies_cache_service.dart' as _i7;
import '../../remote_sources/movies_source/movies_api_service.dart' as _i6;
import 'main_module.dart' as _i18;

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
  gh.factory<_i6.MoviesApiService>(
      () => _i6.MoviesApiServiceImpl(get<_i4.FlavorConfig>()));
  gh.lazySingleton<_i7.MoviesCacheDataSource>(
      () => _i7.MoviesCacheDataSourceImpl(get<_i5.HiveWrapper>()));
  gh.factory<_i8.NavigationBarCubit>(() => _i8.NavigationBarCubit());
  gh.lazySingleton<_i9.NetworkInfo>(
      () => _i9.NetworkInfoImpl(get<_i3.Connectivity>()));
  gh.lazySingleton<_i10.FavouritesCacheDataSource>(
      () => _i10.MoviesCacheDataSourceImpl(get<_i5.HiveWrapper>()));
  gh.lazySingleton<_i11.FavouritesRepository>(() =>
      _i11.FavouritesRepositoryImpl(get<_i10.FavouritesCacheDataSource>()));
  gh.lazySingleton<_i12.FetchFavouritesUsecase>(
      () => _i12.FetchFavouritesUsecase(get<_i11.FavouritesRepository>()));
  gh.lazySingleton<_i13.MoviesRepository>(() => _i13.MoviesRepositoryImpl(
      get<_i6.MoviesApiService>(),
      get<_i7.MoviesCacheDataSource>(),
      get<_i9.NetworkInfo>()));
  gh.lazySingleton<_i14.ToggleFavouriteUsecase>(
      () => _i14.ToggleFavouriteUsecase(get<_i11.FavouritesRepository>()));
  gh.factory<_i15.FavouritesBloc>(() => _i15.FavouritesBloc(
      get<_i14.ToggleFavouriteUsecase>(), get<_i12.FetchFavouritesUsecase>()));
  gh.lazySingleton<_i16.FetchMoviesUsecase>(
      () => _i16.FetchMoviesUsecase(get<_i13.MoviesRepository>()));
  gh.factory<_i17.PopularMoviesBloc>(() => _i17.PopularMoviesBloc(
      get<_i9.NetworkInfo>(),
      fetchMoviesUsecase: get<_i16.FetchMoviesUsecase>()));
  return get;
}

class _$MainModule extends _i18.MainModule {}
