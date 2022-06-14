import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../favourites_list/ui/pages/favourites_page.dart';
import '../../movies_list/ui/pages/movies_page.dart';
import '../cubit/navigation_bar_cubit_cubit.dart';

class HomeBodyView extends StatefulWidget {
  const HomeBodyView({
    super.key,
  });

  @override
  State<HomeBodyView> createState() => _HomeBodyViewState();
}

class _HomeBodyViewState extends State<HomeBodyView> {
  late final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<NavigationBarCubit, NavigationBarState>(
      listener: (_, state) => onNavBarSelectedPageChanged(state),
      child: PageView.builder(
        itemCount: 2,
        controller: _pageController,
        onPageChanged: (newSelectedPage) =>
            BlocProvider.of<NavigationBarCubit>(context)
                .scrollPage(newSelectedPage),
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return const MoviesPage();
          } else {
            return const FavouritesPage();
          }
        },
      ),
    );
  }

  void onNavBarSelectedPageChanged(NavigationBarState state) {
    if (state is NavigationBarPageChanged) {
      try {
        final currenltyShowingPage = _pageController.page?.toInt() ?? 10;
        if (currenltyShowingPage != state.currentlySelectedPage) {
          _pageController.animateToPage(
            state.currentlySelectedPage,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        }
      } catch (_) {}
    }
  }
}
