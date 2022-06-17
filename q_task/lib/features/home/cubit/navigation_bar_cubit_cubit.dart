import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'navigation_bar_cubit_state.dart';

@injectable
class NavigationBarCubit extends Cubit<NavigationBarState> {
  NavigationBarCubit() : super(const NavigationBarPageChanged(0));

  void changePage(int page) {
    emit(NavigationBarPageChanged(page));
  }
}
