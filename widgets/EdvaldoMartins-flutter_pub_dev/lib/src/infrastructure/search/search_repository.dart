import 'package:dartz/dartz.dart';
import 'package:flutter_package/src/domain/core/request_failure.dart';
import 'package:flutter_package/src/domain/search/i_search_repository.dart';
import 'package:flutter_package/src/domain/search/i_search_service.dart';

class SearchRepository extends ISearchRepository {
  SearchRepository(ISearchService service) : super(service);

  @override
  Future<Either<RequestFailure, List<String>>> searchPackage({
    required int page,
    required String query,
  }) async =>
      await service.searchPackage(page: page, query: query);
}
