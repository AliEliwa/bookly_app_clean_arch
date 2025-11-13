import 'package:bookly_app_clean_arch/features/home/domain/entities/book_entity.dart';

abstract class HomeRepositories{

  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();

}