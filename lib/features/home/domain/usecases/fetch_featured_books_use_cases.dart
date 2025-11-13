import 'package:bookly_app_clean_arch/core/errors/failure.dart';
import 'package:bookly_app_clean_arch/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app_clean_arch/features/home/domain/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase{

  final HomeRepositories homeRepositories;

  FetchFeaturedBooksUseCase(this.homeRepositories);

  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks(){
    //check Permissions
    //check internet connection for Example

    return homeRepositories.fetchFeaturedBooks();
  }

}