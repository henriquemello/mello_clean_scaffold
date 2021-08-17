abstract class Failure implements Exception {
  String get message;
}

class DefaultFailure extends Failure {
  @override
  final String message;
  DefaultFailure({
    this.message,
  });
}

class DatasourceError extends Failure {
  @override
  final String message;
  DatasourceError({
    this.message,
  });
}

class HttpClientError extends Failure {
  final int statusCode;
  @override
  final String message;
  HttpClientError({
    this.message,
    this.statusCode,
  });
}

class RepositoryFailure extends Failure {
  @override
  final String message;
  RepositoryFailure({
    this.message,
  });
}
