import '../domain/exceptions.dart';

class FirebaseFailure extends Failure {
  const FirebaseFailure(String message) : super(message);
}

class ConnectionFailure extends Failure {
  const ConnectionFailure(String message) : super(message);
}
