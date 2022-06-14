import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'navigation_bar_cubit_state.dart';

class NavigationBarCubit extends Cubit<NavigationBarState> {
  NavigationBarCubit() : super(const NavigationBarPageChanged(0));

  void changePage(int page) {
    emit(NavigationBarPageChanged(page));
  }

  void scrollPage(int page) {
    emit(NavigationBarPageChangedFromPageView(page));
  }
}
