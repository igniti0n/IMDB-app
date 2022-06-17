import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/constants/colors.dart';
import '../../../../common/constants/fonts.dart';
import '../../../../common/errors/exception_to_failure_mapper.dart';
import '../../../../common/errors/exceptions.dart';
import '../blocs/bloc/popular_movies_bloc.dart';

class MoviesListError extends StatelessWidget {
  const MoviesListError({super.key, required this.onTryAgain});
  final Function() onTryAgain;

  // String errorMessage(BuildContext ctx) {
  //   final currentMoviesState = BlocProvider.of<PopularMoviesBloc>(ctx).state;
  //   if (currentMoviesState is PopularMoviesError) {
  //     return currentMoviesState.failure.message;
  //   } else {
  //     return ExceptionToFailureMapper.mapExceptionToFailure(UnknownException())
  //         .message;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Retry request',
            style: FontStyles.semiBold15,
            textAlign: TextAlign.center,
          ),
          IconButton(
            onPressed: onTryAgain,
            icon: const Icon(
              Icons.replay_outlined,
              color: AppColors.qPrimary,
            ),
          )
        ],
      ),
    );
  }
}
