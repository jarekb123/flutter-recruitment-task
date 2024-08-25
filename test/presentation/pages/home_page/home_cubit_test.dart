import 'package:bloc_test/bloc_test.dart';
import 'package:comms/comms.dart';
import 'package:flutter_recruitment_task/models/get_products_page.dart';
import 'package:flutter_recruitment_task/models/products_page.dart';
import 'package:flutter_recruitment_task/presentation/events.dart';
import 'package:flutter_recruitment_task/presentation/pages/filters_page/filters_cubit.dart';
import 'package:flutter_recruitment_task/presentation/pages/home_page/home_cubit.dart';
import 'package:flutter_recruitment_task/repositories/products_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockProductsRepository extends Mock implements ProductsRepository {}

void main() {
  late MockProductsRepository repository;

  setUp(() {
    repository = MockProductsRepository();
  });

  HomeCubit build() => HomeCubit(repository);

  blocTest<HomeCubit, HomeState>(
    'has initial state of Loading',
    build: build,
    verify: (bloc) => expect(bloc.state, isA<Loading>()),
  );

  List<Product> generateProducts([int idOffset = 0]) =>
      List.generate(10, (index) => _generateProduct('${index + idOffset}'));

  final productsPage1 = generateProducts();
  final productsPage2 = generateProducts(10);

  blocTest<HomeCubit, HomeState>(
    'emits products with non-null nextPageIndex when has more pages',
    build: build,
    setUp: () {
      when(
        () => repository.getProductsPage(
          const GetProductsPage(pageNumber: 1),
        ),
      ).thenAnswer(
        (_) async => ProductsPage(
          products: productsPage1,
          pageNumber: 1,
          totalPages: 2,
          pageSize: 10,
        ),
      );
    },
    act: (bloc) => bloc.getNextPage(),
    expect: () => [
      Loaded(products: productsPage1, nextPageIndex: 2),
    ],
  );

  blocTest<HomeCubit, HomeState>(
    'emits products with null nextPageIndex when has no more pages',
    build: build,
    setUp: () {
      when(
        () => repository.getProductsPage(
          const GetProductsPage(pageNumber: 1),
        ),
      ).thenAnswer(
        (_) async => ProductsPage(
          products: productsPage1,
          pageNumber: 1,
          totalPages: 1,
          pageSize: 10,
        ),
      );
    },
    act: (bloc) => bloc.getNextPage(),
    expect: () => [
      Loaded(products: productsPage1, nextPageIndex: null),
    ],
  );

  blocTest<HomeCubit, HomeState>(
    'emits error when repository throws',
    build: build,
    setUp: () {
      when(
        () => repository.getProductsPage(
          const GetProductsPage(pageNumber: 1),
        ),
      ).thenAnswer((_) => Future.error(Exception('error')));
    },
    act: (bloc) => bloc.getNextPage(),
    expect: () => [
      isA<Error>(),
    ],
  );

  blocTest<HomeCubit, HomeState>(
    'Fetches 1st page on applied filters, then fetches pages with applied filters',
    build: build,
    setUp: () {
      when(
        () => repository.getProductsPage(
          const GetProductsPage(
            pageNumber: 1,
            availableOnly: true,
            bestOnly: true,
            favoritesOnly: true,
            searchQuery: 'search',
            minPrice: 10,
            maxPrice: 20,
          ),
        ),
      ).thenAnswer(
        (_) async => ProductsPage(
          products: productsPage1,
          pageNumber: 1,
          totalPages: 2,
          pageSize: 10,
        ),
      );
      when(
        () => repository.getProductsPage(
          const GetProductsPage(
            pageNumber: 2,
            availableOnly: true,
            bestOnly: true,
            favoritesOnly: true,
            searchQuery: 'search',
            minPrice: 10,
            maxPrice: 20,
          ),
        ),
      ).thenAnswer(
        (_) async => ProductsPage(
          products: productsPage2,
          pageNumber: 2,
          totalPages: 2,
          pageSize: 10,
        ),
      );
    },
    act: (bloc) async {
      final send = getSend();
      send(
        FiltersAppliedEvent(
          const ProductsFilters(
            favoritesOnly: true,
            availableOnly: true,
            bestOnly: true,
            searchQuery: 'search',
            priceRange: PriceRange(min: 10, max: 20),
          ),
        ),
      );
      await Future.delayed(Duration.zero);

      bloc.getNextPage();
    },
    seed: () => Loaded(
      products: [...productsPage1, ...productsPage2],
      nextPageIndex: 3,
    ),
    expect: () => [
      Loaded(
        products: productsPage1,
        nextPageIndex: 2,
        filters: const ProductsFilters(
          availableOnly: true,
          bestOnly: true,
          favoritesOnly: true,
          searchQuery: 'search',
          priceRange: PriceRange(min: 10, max: 20),
        ),
      ),
      Loaded(
        products: [...productsPage1, ...productsPage2],
        nextPageIndex: null,
        filters: const ProductsFilters(
          availableOnly: true,
          bestOnly: true,
          favoritesOnly: true,
          searchQuery: 'search',
          priceRange: PriceRange(min: 10, max: 20),
        ),
      ),
    ],
  );
}

Product _generateProduct(String id) {
  final json = {
    "id": id,
    "name": "OneDayMore Musli owocowe 3xTuba 400g",
    "description": "",
    "available": true,
    "offer": {
      "sellerId": "seller075",
      "sellerName": "seller075",
      "skuId": "11242",
      "regularPrice": {"amount": 51, "currency": "PLN"},
      "promotionalPrice": {"amount": 2, "currency": "PLN"},
      "normalizedPrice": {
        "amount": 4.25,
        "currency": "PLN",
        "unitLabel": "/100g"
      },
      "promotionalNormalizedPrice": {
        "amount": 0.17,
        "currency": "PLN",
        "unitLabel": "/100g"
      },
      "omnibusFrom": "2023-11-22",
      "omnibusPrice": {"amount": 45, "currency": "PLN"},
      "omnibusLabel": "Najniższa cena z 30 dni przed obniżką",
      "isBest": false,
      "isSponsored": false,
      "subtitle": ""
    },
    "mainImage": "",
    "tags": [
      {
        "color": "#EC0677",
        "label": "%",
        "tag": "promotion",
        "labelColor": "#FFFFFF"
      }
    ],
    "sellerId": "seller075",
    "isFavorite": false,
    "isBlurred": false
  };

  return Product.fromJson(json);
}
