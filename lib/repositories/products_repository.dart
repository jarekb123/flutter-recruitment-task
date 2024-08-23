//
// Don't modify this file please!
//
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_recruitment_task/models/get_products_page.dart';
import 'package:flutter_recruitment_task/models/products_page.dart';

const _fakeDelay = Duration(milliseconds: 500);

abstract class ProductsRepository {
  Future<ProductsPage> getProductsPage(GetProductsPage param);
}

class MockedProductsRepository implements ProductsRepository {
  @override
  Future<ProductsPage> getProductsPage(GetProductsPage param) async {
    final path = 'assets/mocks/products_pages/${param.pageNumber}.json';
    final data = await rootBundle.loadString(path);
    final json = jsonDecode(data);
    final page = ProductsPage.fromJson(json);

    /// Why filtering is done here?
    ///
    /// Because most of the time, the filtering is done on the server side.
    /// That's why we should simulate it here.
    ///
    /// If we would like to filter the products on the frontend side,
    /// it may be a good idea to filter them in the cubit that is responsible
    /// for the products list.
    final filteredProducts = page.products
        .where(
          (product) => _applyFilter(product, param),
        )
        .toList();

    return Future.delayed(
      _fakeDelay,
      () => ProductsPage(
        pageNumber: page.pageNumber,
        pageSize: filteredProducts.length,
        totalPages: page.totalPages,
        products: filteredProducts,
      ),
    );
  }

  bool _applyFilter(Product product, GetProductsPage request) {
    if (request.favoritesOnly && (product.isFavorite ?? false)) {
      return false;
    }

    if (request.availableOnly && product.available) {
      return false;
    }

    if (request.bestOnly && (product.offer.isBest ?? false)) {
      return false;
    }

    final searchQuery = request.searchQuery;
    if (searchQuery != null &&
        !product.name.toLowerCase().contains(searchQuery.toLowerCase())) {
      return false;
    }

    return true;
  }
}
