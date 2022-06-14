import 'package:dartz/dartz.dart' show Either;

import '../errors/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
