import 'dart:developer';

import 'package:comms/comms.dart';
import 'package:flutter_recruitment_task/models/get_products_page.dart';
import 'package:flutter_recruitment_task/models/products_page.dart';
import 'package:flutter_recruitment_task/presentation/pages/filters_page/filters_cubit.dart';
import 'package:flutter_recruitment_task/repositories/products_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_cubit.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.loading() = Loading;
  const factory HomeState.loaded({
    required List<Product> products,
    int? initialProductIndex,
    int? nextPageIndex,
    ProductsFilters? filters,
  }) = Loaded;
  const factory HomeState.error({required dynamic error}) = Error;
}

class _PaginatedResult<T> {
  const _PaginatedResult({
    required this.items,
    required this.nextPageIndex,
  });

  final List<T> items;
  final int? nextPageIndex;
}

class HomeCubit extends ListenerCubit<HomeState, ProductsFilters> {
  HomeCubit(this._productsRepository) : super(const Loading());

  final ProductsRepository _productsRepository;

  @override
  void onMessage(ProductsFilters message) {
    /// If the filter are applied, we should fetch the first page
    /// with the applied filters.
    _getPage(
      pageNumber: 1,
      filters: message,
    );
  }

  Future<void> getNextPage({
    String? lookupProductId,
  }) async {
    final state = this.state;
    if (state is Loading) {
      // first page
      await _getPage(
        pageNumber: 1,
        lookupProductId: lookupProductId,
      );
    } else if (state is Loaded) {
      final nextPageIndex = state.nextPageIndex;
      if (nextPageIndex == null) {
        return;
      }

      // next page (may contain the applied filters)
      await _getPage(
        pageNumber: nextPageIndex,
        filters: state.filters,
        lookupProductId: lookupProductId,
      );
    }
  }

  Future<void> _getPage({
    required int pageNumber,
    ProductsFilters? filters,
    String? lookupProductId,
  }) async {
    try {
      final page = await _request(
        GetProductsPage(
          pageNumber: pageNumber,
          availableOnly: filters?.availableOnly ?? false,
          bestOnly: filters?.bestOnly ?? false,
          favoritesOnly: filters?.favoritesOnly ?? false,
          searchQuery: filters?.searchQuery,
        ),
      );

      /// Clear the list of fetched products if the page number is 1
      final fetchedProducts = pageNumber == 1
          ? <Product>[]
          : switch (state) {
              Loaded state => state.products,
              _ => <Product>[],
            };
      final products = [
        ...fetchedProducts,
        ...page.items,
      ];

      final lookupProductIndex = lookupProductId != null
          ? _getIndexForProduct(lookupProductId, products)
          : null;

      emit(
        Loaded(
          products: products,
          initialProductIndex: lookupProductIndex,
          nextPageIndex: page.nextPageIndex,
          filters: filters,
        ),
      );

      /// Automatically fetch the next page if the lookup product is not found
      if (lookupProductId != null && lookupProductIndex == null) {
        final nextPageIndex = page.nextPageIndex;
        if (nextPageIndex != null) {
          _getPage(
            pageNumber: nextPageIndex,
            filters: filters,
            lookupProductId: lookupProductId,
          );
        }
      }
    } catch (e) {
      emit(Error(error: e));
    }
  }

  Future<_PaginatedResult<Product>> _request(GetProductsPage request) async {
    log('Getting page ${request.pageNumber}');

    final page = await _productsRepository.getProductsPage(request);

    final nextPageIndex =
        page.totalPages > request.pageNumber ? request.pageNumber + 1 : null;

    return _PaginatedResult(items: page.products, nextPageIndex: nextPageIndex);
  }

  int? _getIndexForProduct(String productId, List<Product> products) {
    final index = products.indexWhere((product) => product.id == productId);
    return index != -1 ? index : null;
  }
}
