import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'find_item_pagination_cubit.freezed.dart';

@freezed
sealed class FindItemPaginationState with _$FindItemPaginationState {
  const factory FindItemPaginationState.idle() = Idle;
  const factory FindItemPaginationState.searching() = Searching;
  const factory FindItemPaginationState.found(int itemIndex) = Found;
  const factory FindItemPaginationState.notFound() = NotFound;
  const factory FindItemPaginationState.requestNextPage() = RequestNextPage;
}

/// Cubit that finds an item in a paginated list.
/// If the item is not found in already fetched items, the cubit will request the next page.
class FindItemPaginationCubit<Item> extends Cubit<FindItemPaginationState> {
  FindItemPaginationCubit() : super(const Idle());

  Future<void> find({
    required bool Function(Item item) searchFn,
    required List<Item> items,
    required bool hasMoreItems,
  }) async {
    // If the item is already found or not found,
    // the search is finished, so we don't need to do anything.
    if (state is Found || state is NotFound) {
      return;
    }
    emit(const FindItemPaginationState.searching());

    final itemIndex = items.indexWhere(searchFn);
    if (itemIndex != -1) {
      emit(FindItemPaginationState.found(itemIndex));
    } else if (hasMoreItems) {
      emit(const FindItemPaginationState.requestNextPage());
    } else {
      emit(const FindItemPaginationState.notFound());
    }
  }
}
