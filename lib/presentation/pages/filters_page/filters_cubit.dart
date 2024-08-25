import 'package:comms/comms.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recruitment_task/presentation/events.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filters_cubit.freezed.dart';

@freezed
class PriceRange with _$PriceRange {
  const factory PriceRange({
    required double min,
    required double max,
  }) = _PriceRange;
}

@freezed
class ProductsFilters with _$ProductsFilters {
  const factory ProductsFilters({
    @Default(false) bool favoritesOnly,
    @Default(false) bool availableOnly,
    @Default(false) bool bestOnly,
    String? searchQuery,
    PriceRange? priceRange,
  }) = _ProductsFilters;
}

class FiltersCubit extends Cubit<ProductsFilters>
    with Sender<FiltersAppliedEvent> {
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

  void setPriceRange(PriceRange priceRange) {
    emit(state.copyWith(priceRange: priceRange));
  }

  void save() {
    send(FiltersAppliedEvent(state));
  }
}
