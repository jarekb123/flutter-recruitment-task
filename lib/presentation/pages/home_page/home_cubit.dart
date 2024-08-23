import 'dart:developer';

import 'package:comms/comms.dart';
import 'package:flutter_recruitment_task/models/get_products_page.dart';
import 'package:flutter_recruitment_task/models/products_page.dart';
import 'package:flutter_recruitment_task/presentation/pages/filters_page/filters_cubit.dart';
import 'package:flutter_recruitment_task/repositories/products_repository.dart';

sealed class HomeState {
  const HomeState();
}

class Loading extends HomeState {
  const Loading();
}

class Loaded extends HomeState {
  const Loaded({
    required this.products,
    this.initialProductIndex,
    required this.nextPageIndex,
    this.filters,
  });

  final List<Product> products;
  final int? initialProductIndex;
  final int? nextPageIndex;
  final ProductsFilters? filters;
}

class Error extends HomeState {
  const Error({required this.error});

  final dynamic error;
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
      request: GetProductsPage(
        pageNumber: 1,
        availableOnly: message.availableOnly,
        bestOnly: message.bestOnly,
        favoritesOnly: message.favoritesOnly,
        searchQuery: message.searchQuery,
      ),
    );
  }

  Future<void> getNextPage({
    String? lookupProductId,
  }) async {
    final state = this.state;
    if (state is Loading) {
      // first page
      await _getPage(
        request: GetProductsPage(pageNumber: 1),
        lookupProductId: lookupProductId,
      );
    } else if (state is Loaded) {
      final nextPageIndex = state.nextPageIndex;
      if (nextPageIndex == null) {
        return;
      }

      // next page (may contain the applied filters)
      await _getPage(
        request: GetProductsPage(
          pageNumber: nextPageIndex,
          availableOnly: state.filters?.availableOnly ?? false,
          bestOnly: state.filters?.bestOnly ?? false,
          favoritesOnly: state.filters?.favoritesOnly ?? false,
          searchQuery: state.filters?.searchQuery,
        ),
        lookupProductId: lookupProductId,
      );
    }
  }

  Future<void> _getPage({
    required GetProductsPage request,
    String? lookupProductId,
  }) async {
    final page = await _request(request);

    /// Clear the list of fetched products if the page number is 1
    final fetchedProducts = request.pageNumber == 1
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
      ),
    );

    /// Automatically fetch the next page if the lookup product is not found
    if (lookupProductId != null && lookupProductIndex == null) {
      final nextPageIndex = page.nextPageIndex;
      if (nextPageIndex != null) {
        _getPage(
          request: request.copyWith(pageNumber: nextPageIndex),
          lookupProductId: lookupProductId,
        );
      }
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
