part of 'navigation_bar_cubit_cubit.dart';

@immutable
abstract class NavigationBarState extends Equatable {
  const NavigationBarState(this.currentlySelectedPage);
  final int currentlySelectedPage;
}

class NavigationBarPageChanged extends NavigationBarState {
  const NavigationBarPageChanged(super.currentlySelectedPage);

  @override
  List<Object?> get props => [currentlySelectedPage];
}

class NavigationBarPageChangedFromPageView extends NavigationBarState {
  const NavigationBarPageChangedFromPageView(super.currentlySelectedPage);

  @override
  List<Object?> get props => [currentlySelectedPage];
}
