import 'package:bookly_app_clean_arch/core/errors/failure.dart';
import 'package:bookly_app_clean_arch/features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepositories{

  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks();
  // Either يا أما ده او ده في الشمال الايرور واليمين الي هيرجع
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks();

}