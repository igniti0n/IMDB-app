import 'failures.dart';
import 'exceptions.dart';

// ignore: avoid_classes_with_only_static_members
class ExceptionToFailureMapper {
  static const String _noInternetFailureMessage = 'No internet connection.';
  static const String _networkFailureMessage =
      'Failed to excetue the request. Network error.';
  static const String _casheFailureMessage =
      'Failed to excetue the request. Cache error.';
  static const String _unknownFailureMessage =
      'Failed to excetue the request. Unknown error.';

  static Failure mapExceptionToFailure(Object exception) {
    if (exception is CacheException) {
      return CacheFailure(_casheFailureMessage);
    } else if (exception is NetworkException) {
      return NetworkFailure(_networkFailureMessage);
    } else if (exception is NoInternetException) {
      return NoConnectionFailure(_noInternetFailureMessage);
    } else {
      return UnknownFailure(_unknownFailureMessage);
    }
  }
}
