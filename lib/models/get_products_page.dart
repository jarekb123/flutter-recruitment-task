import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_products_page.freezed.dart';

@freezed
class GetProductsPage with _$GetProductsPage {
  const factory GetProductsPage({
    required int pageNumber,
    String? searchQuery,
    @Default(false) bool favoritesOnly,
    @Default(false) bool availableOnly,
    @Default(false) bool bestOnly,
    double? minPrice,
    double? maxPrice,
  }) = _GetProductsPage;
}
