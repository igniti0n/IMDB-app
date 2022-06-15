import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/cubit/navigation_bar_cubit_cubit.dart';
import '../../features/home/pages/home_page.dart';
import '../../features/movie_details/ui/pages/movie_details_page.dart';
import 'routes.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case rHomePage:
      // return _createRoute(
      //   BlocProvider(
      //     create: (_) => NavigationBarCubit(),
      //     child: const HomePage(),
      //   ),
      // );
      return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (_) => NavigationBarCubit(),
          child: const HomePage(),
        ),
      );
    case rDetailsPage:
      //   return _createRoute(
      //     const MovieDetailsPage(),
      //   );
      return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (_) => NavigationBarCubit(),
          child: const MovieDetailsPage(),
        ),
      );
    default:
      return _createRoute(Container());
  }
}

Route<PageRouteBuilder<dynamic>> _createRoute(Widget child) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
