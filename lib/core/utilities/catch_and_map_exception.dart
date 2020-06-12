import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';

import '../error_mapping/app_error.dart';

Future<Either<AppError, R>> checkConnectionAndCatchException<R>(Function call) async {
  if(! await DataConnectionChecker().hasConnection) return Left(AppError.offline());
  return catchException(call);
}

Future<Either<AppError, R>> catchException<R>(Function call) async {
  try {
    final result = await call();
    return Right(result);
  } catch(e) {
    return Left(AppError.fromException(e));
  }
}