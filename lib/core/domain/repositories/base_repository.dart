import 'package:fpdart/fpdart.dart';
import '../../error/failures.dart';

abstract class BaseRepository<T> {
  Future<Either<Failure, T>> get(String id);
  Future<Either<Failure, List<T>>> getAll();
  Future<Either<Failure, T>> create(T entity);
  Future<Either<Failure, T>> update(T entity);
  Future<Either<Failure, bool>> delete(String id);
}
