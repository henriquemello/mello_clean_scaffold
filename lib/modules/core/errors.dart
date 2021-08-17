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
  final EnumHttpErrors statusCode;
  @override
  final String message;
  HttpClientError({
    this.message,
    this.statusCode,
  });
}
enum EnumHttpErrors {
  badRequest,
  serverError,
}

enum DomainError { httpServerError, unexpectedError }


class RepositoryFailure extends Failure {
  @override
  final String message;
  RepositoryFailure({
    this.message,
  });
}
