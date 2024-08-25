import 'package:flutter_recruitment_task/models/get_products_page.dart';
import 'package:flutter_recruitment_task/models/products_page.dart';
import 'package:flutter_recruitment_task/repositories/products_filter.dart';
import 'package:flutter_test/flutter_test.dart';

import 'products_filter_test_data.dart';

void main() {
  final products = ProductsPage.fromJson(productsFilterTestData);

  group('filterProducts', () {
    test('can filter products by name (case insensitive)', () {
      // given
      const searchQuery = 'OneDayMore';

      // when
      final filteredProducts = products.products
          .where(
            (product) => filterProducts(
              product,
              const GetProductsPage(
                pageNumber: 1,
                searchQuery: searchQuery,
              ),
            ),
          )
          .toList();

      // then
      expect(filteredProducts.length, 1);
      expect(filteredProducts.first.id, '1228');

      // when
      final filteredProducts2 = products.products
          .where(
            (product) => filterProducts(
              product,
              GetProductsPage(
                pageNumber: 1,
                searchQuery: searchQuery.toLowerCase(),
              ),
            ),
          )
          .toList();

      // then
      expect(filteredProducts2.length, 1);
      expect(filteredProducts2.first.id, '1228');
    });

    test('can filter products by price range', () {
      // given
      const minPrice = 2.0;
      const maxPrice = 10.0;

      // when
      final filteredProducts = products.products
          .where(
            (product) => filterProducts(
              product,
              const GetProductsPage(
                pageNumber: 1,
                minPrice: minPrice,
                maxPrice: maxPrice,
              ),
            ),
          )
          .toList();

      // then
      expect(
        filteredProducts.map((p) => p.id),
        ['1228', '933', '912', '906', '930', '58', '915'],
      );
    });

    test('can filter favorite products', () {
      // given
      // when
      final filteredProducts = products.products
          .where(
            (product) => filterProducts(
              product,
              const GetProductsPage(
                pageNumber: 1,
                favoritesOnly: true,
              ),
            ),
          )
          .toList();

      // then
      expect(
        filteredProducts.map((p) => p.id),
        ['21', '22'],
      );
    });

    test('can apply multiple filters ', () {
      // given
      const searchQuery = 'OneDayMore';
      const minPrice = 3.0;
      const maxPrice = 100.0;

      // when
      final filteredProducts = products.products
          .where(
            (product) => filterProducts(
              product,
              const GetProductsPage(
                pageNumber: 1,
                searchQuery: searchQuery,
                minPrice: minPrice,
                maxPrice: maxPrice,
                favoritesOnly: true,
              ),
            ),
          )
          .toList();

      // then
      expect(filteredProducts, isEmpty);
    });
  });
}
