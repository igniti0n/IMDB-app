import 'package:flutter/material.dart';

import '../common/constants/colors.dart';
import '../common/navigation/on_generate_route.dart';
import '../common/navigation/routes.dart';

class IMDBApp extends StatelessWidget {
  const IMDBApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMDB App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.qPrimary,
        splashColor: AppColors.qSplashColor,
      ),
      initialRoute: rHomePage,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
