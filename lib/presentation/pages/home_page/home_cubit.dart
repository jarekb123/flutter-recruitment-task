import 'dart:developer';

import 'package:comms/comms.dart';
import 'package:flutter_recruitment_task/models/get_products_page.dart';
import 'package:flutter_recruitment_task/models/products_page.dart';
import 'package:flutter_recruitment_task/presentation/events.dart';
import 'package:flutter_recruitment_task/presentation/pages/filters_page/filters_cubit.dart';
import 'package:flutter_recruitment_task/repositories/products_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_cubit.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.loading() = Loading;
  const factory HomeState.loaded({
    required List<Product> products,
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

class HomeCubit extends ListenerCubit<HomeState, FiltersAppliedEvent> {
  HomeCubit(this._productsRepository) : super(const Loading());

  final ProductsRepository _productsRepository;

  @override
  void onMessage(FiltersAppliedEvent message) {
    /// If the filter are applied, we should fetch the first page
    /// with the applied filters.
    _getPage(
      pageNumber: 1,
      filters: message.filters,
    );
  }

  Future<void> getNextPage() async {
    final state = this.state;
    if (state is Loading) {
      // first page
      await _getPage(
        pageNumber: 1,
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
      );
    }
  }

  Future<void> search(String query) async {
    final state = this.state;
    if (state is Loaded) {
      await _getPage(
        pageNumber: 1,
        filters: state.filters?.copyWith(searchQuery: query) ??
            ProductsFilters(searchQuery: query),
      );
    } else {
      await _getPage(
        pageNumber: 1,
        filters: ProductsFilters(searchQuery: query),
      );
    }
  }

  /// What can be improved?
  ///
  /// * Automatically fetch next page if the filtered page is empty
  /// * Extract the lookup product logic to a separate cubit
  Future<void> _getPage({
    required int pageNumber,
    ProductsFilters? filters,
  }) async {
    try {
      final page = await _request(
        GetProductsPage(
          pageNumber: pageNumber,
          availableOnly: filters?.availableOnly ?? false,
          bestOnly: filters?.bestOnly ?? false,
          favoritesOnly: filters?.favoritesOnly ?? false,
          searchQuery: filters?.searchQuery,
          minPrice: filters?.priceRange?.min,
          maxPrice: filters?.priceRange?.max,
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

      emit(
        Loaded(
          products: products,
          nextPageIndex: page.nextPageIndex,
          filters: filters,
        ),
      );
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
}
