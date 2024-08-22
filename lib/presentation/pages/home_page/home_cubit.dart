import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_recruitment_task/models/get_products_page.dart';
import 'package:flutter_recruitment_task/models/products_page.dart';
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
  });

  final List<Product> products;
  final int? initialProductIndex;
  final int? nextPageIndex;
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

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this._productsRepository, {
    this.initialProductId,
  }) : super(const Loading());

  final ProductsRepository _productsRepository;
  final String? initialProductId;

  Future<void> getNextPage({String? lookupProductId}) async {
    final state = this.state;
    if (state is Loading) {
      // first page
      final page = await _getPage(1);
      final initialProductIndex = lookupProductId != null
          ? _getIndexForProduct(lookupProductId, page.items)
          : null;

      emit(
        Loaded(
          products: page.items,
          initialProductIndex: initialProductIndex,
          nextPageIndex: page.nextPageIndex,
        ),
      );

      if (lookupProductId != null && initialProductIndex == null) {
        getNextPage(lookupProductId: lookupProductId);
      }
    } else if (state is Loaded) {
      final nextPageIndex = state.nextPageIndex;
      if (nextPageIndex == null) {
        return;
      }

      final page = await _getPage(nextPageIndex);
      final products = [
        ...state.products,
        ...page.items,
      ];
      final initialProductIndex = lookupProductId != null
          ? _getIndexForProduct(lookupProductId, products)
          : null;

      emit(
        Loaded(
          products: products,
          initialProductIndex: initialProductIndex,
          nextPageIndex: page.nextPageIndex,
        ),
      );

      if (lookupProductId != null && initialProductIndex == null) {
        getNextPage(lookupProductId: lookupProductId);
      }
    }
  }

  Future<_PaginatedResult<Product>> _getPage(int pageNumber) async {
    log('Getting page $pageNumber');

    final page = await _productsRepository
        .getProductsPage(GetProductsPage(pageNumber: pageNumber));

    final nextPageIndex = page.totalPages > pageNumber ? pageNumber + 1 : null;

    return _PaginatedResult(items: page.products, nextPageIndex: nextPageIndex);
  }

  int? _getIndexForProduct(String productId, List<Product> products) {
    final index = products.indexWhere((product) => product.id == productId);
    return index != -1 ? index : null;
  }
}
