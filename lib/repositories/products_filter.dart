import 'package:flutter_recruitment_task/models/get_products_page.dart';
import 'package:flutter_recruitment_task/models/products_page.dart';

bool filterProducts(
  Product product,
  GetProductsPage request,
) {
  if (request.favoritesOnly && product.isFavorite == false) {
    return false;
  }

  if (request.availableOnly && !product.available) {
    return false;
  }

  if (request.bestOnly && product.offer.isBest == false) {
    return false;
  }

  final searchQuery = request.searchQuery;
  if (searchQuery != null &&
      !product.name.toLowerCase().contains(searchQuery.toLowerCase())) {
    return false;
  }

  return _applyPriceRange(product, request.minPrice, request.maxPrice);
}

bool _applyPriceRange(
  Product product,
  double? minPrice,
  double? maxPrice,
) {
  // Assumption: user pays promotional price if available
  final price = product.offer.promotionalPrice ?? product.offer.regularPrice;

  if (minPrice != null && price.amount < minPrice) {
    return false;
  }
  if (maxPrice != null && price.amount > maxPrice) {
    return false;
  }
  return true;
}
