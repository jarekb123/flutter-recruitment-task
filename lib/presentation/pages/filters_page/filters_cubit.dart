import 'package:comms/comms.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filters_cubit.freezed.dart';

@freezed
class ProductsFilters with _$ProductsFilters {
  const factory ProductsFilters({
    required bool favoritesOnly,
    required bool availableOnly,
    required bool bestOnly,
    required String? searchQuery,
  }) = _ProductsFilters;
}

class FiltersCubit extends Cubit<ProductsFilters> with Sender<ProductsFilters> {
  FiltersCubit({
    ProductsFilters? initialFilters,
  }) : super(
          initialFilters ??
              const ProductsFilters(
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
