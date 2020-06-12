

class AppError {
  final String message;

  AppError(this.message);

  factory AppError.genericError() => AppError('generic error');

  factory AppError.offline() => AppError('offline');

  factory AppError.fromException(e) => AppError(e.toString());
}

typedef OnError = void Function(AppError appError);