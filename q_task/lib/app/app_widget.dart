import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../common/constants/colors.dart';
import '../common/navigation/on_generate_route.dart';
import '../common/navigation/routes.dart';
import '../features/favourites_list/ui/blocs/bloc/favourites_bloc.dart';
import 'DI/injection.dart';

class IMDBApp extends StatelessWidget {
  const IMDBApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<FavouritesBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'IMDB App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppColors.qPrimary,
          splashColor: AppColors.qSplashColor,
        ),
        initialRoute: rHomePage,
        onGenerateRoute: onGenerateRoute,
      ),
    );
  }
}
