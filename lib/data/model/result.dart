class Result<T> {
  Result._();

  factory Result.success(T value) = ResultSuccess;
  factory Result.error(Exception exception) = ResultError;
}

class ResultError<T> extends Result<T> {
  ResultError(this.exception) : super._();
  final Exception exception;
}

class ResultSuccess<T> extends Result<T> {
  ResultSuccess(this.value) : super._();
  final T value;
}
