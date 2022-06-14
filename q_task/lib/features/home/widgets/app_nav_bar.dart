import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/constants/colors.dart';
import '../cubit/navigation_bar_cubit_cubit.dart';
import 'app_nav_bar_item.dart';

class AppNavBar extends StatelessWidget {
  const AppNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final padding = width / 8;
    final indicatorWidth = 100;

    return BlocBuilder<NavigationBarCubit, NavigationBarState>(
      builder: (ctx, state) {
        return Stack(
          children: [
            BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: (newSelectedPage) =>
                  BlocProvider.of<NavigationBarCubit>(ctx).changePage(
                newSelectedPage,
              ),
              currentIndex: state.currentlySelectedPage,
              backgroundColor: AppColors.qNavBarColor,
              selectedItemColor: Colors.red,
              unselectedItemColor: AppColors.qText,
              items: [
                BottomNavigationBarItem(
                  icon: AppNavBarItem(
                    isSelected: state.currentlySelectedPage == 0,
                    svgAssetPath: 'movies',
                    title: 'Movies',
                  ),
                  label: 'Movies',
                ),
                BottomNavigationBarItem(
                  icon: AppNavBarItem(
                    isSelected: state.currentlySelectedPage == 1,
                    svgAssetPath: 'favourites_tab',
                    title: 'Favourites',
                  ),
                  label: 'Favourites',
                ),
              ],
            ),
            AnimatedPositioned(
              left: state.currentlySelectedPage == 0
                  ? padding
                  : width - padding - indicatorWidth,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOutCirc,
              child: Container(
                height: 2,
                width: 100,
                decoration: BoxDecoration(
                  color: AppColors.qPrimary,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
