import 'package:comms/comms.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsFilters {
  final bool favoritesOnly;
  final bool availableOnly;
  final bool bestOnly;
  final String? searchQuery;

  ProductsFilters({
    required this.favoritesOnly,
    required this.availableOnly,
    required this.bestOnly,
    required this.searchQuery,
  });

  ProductsFilters copyWith({
    bool? favoritesOnly,
    bool? availableOnly,
    bool? bestOnly,
    String? searchQuery,
  }) {
    return ProductsFilters(
      favoritesOnly: favoritesOnly ?? this.favoritesOnly,
      availableOnly: availableOnly ?? this.availableOnly,
      bestOnly: bestOnly ?? this.bestOnly,
      searchQuery: searchQuery ?? this.searchQuery,
    );
  }
}

class FiltersCubit extends Cubit<ProductsFilters> with Sender<ProductsFilters> {
  FiltersCubit({
    ProductsFilters? initialFilters,
  }) : super(
          initialFilters ??
              ProductsFilters(
                favoritesOnly: false,
                availableOnly: false,
                bestOnly: false,
                searchQuery: null,
              ),
        );

  void toggleFavoritesOnly() {
    emit(state.copyWith(favoritesOnly: !state.favoritesOnly));
  }

  void toggleAvailableOnly() {
    emit(state.copyWith(availableOnly: !state.availableOnly));
  }

  void toggleBestOnly() {
    emit(state.copyWith(bestOnly: !state.bestOnly));
  }

  void setSearchQuery(String searchQuery) {
    emit(state.copyWith(searchQuery: searchQuery));
  }

  void save() {
    send(state);
  }
}
