import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app/DI/injection.dart';
import '../../features/home/cubit/navigation_bar_cubit_cubit.dart';
import '../../features/home/pages/home_page.dart';
import '../../features/movie_details/ui/pages/movie_details_page.dart';
import '../../features/movies_list/ui/blocs/bloc/popular_movies_bloc.dart';
import '../models/movie/movie.dart';
import 'routes.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case rHomePage:
      return _createRoute(
        MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => getIt<NavigationBarCubit>(),
            ),
            BlocProvider(
              create: (_) => getIt<PopularMoviesBloc>(),
            ),
          ],
          child: const HomePage(),
        ),
      );
    case rDetailsPage:
      return _createRoute(
        MovieDetailsPage(movie: settings.arguments! as Movie),
      );
    default:
      return _createRoute(Container());
  }
}

Route<PageRouteBuilder<dynamic>> _createRoute(Widget child) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const beginOffset = Offset(0, 1);
      const endOffset = Offset.zero;
      final tween = Tween<Offset>(begin: beginOffset, end: endOffset);
      final curvedAnimation = CurvedAnimation(
        parent: animation,
        curve: Curves.easeOut,
      );
      final offsetAnimation = curvedAnimation.drive(tween);
      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
