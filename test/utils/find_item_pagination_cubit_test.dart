import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_recruitment_task/utils/scroll_to_item/find_item_pagination_cubit.dart';

class _TestItem {
  final int a;
  final int b;

  const _TestItem(this.a, this.b);
}

void main() {
  const items1 = [
    _TestItem(1, 2),
    _TestItem(3, 4),
    _TestItem(5, 6),
  ];

  const items2 = [
    _TestItem(1, 2),
    _TestItem(3, 4),
    _TestItem(5, 6),
    _TestItem(1, 2),
    _TestItem(4, 4),
    _TestItem(5, 6),
  ];

  FindItemPaginationCubit<_TestItem> build() =>
      FindItemPaginationCubit<_TestItem>();

  blocTest<FindItemPaginationCubit<_TestItem>, FindItemPaginationState>(
    'emits requestNextPage if the item is not found and has more items',
    build: build,
    act: (bloc) => bloc.find(
      searchFn: (item) => item.a == item.b,
      items: items1,
      hasMoreItems: true,
    ),
    expect: () => const <FindItemPaginationState>[
      FindItemPaginationState.searching(),
      FindItemPaginationState.requestNextPage(),
    ],
  );

  blocTest<FindItemPaginationCubit<_TestItem>, FindItemPaginationState>(
    'emits notFound if the item is not found and has no more items',
    build: build,
    act: (bloc) => bloc.find(
      searchFn: (item) => item.a == item.b,
      items: items1,
      hasMoreItems: false,
    ),
    expect: () => const <FindItemPaginationState>[
      FindItemPaginationState.searching(),
      FindItemPaginationState.notFound(),
    ],
  );

  blocTest(
    'emits found if the item found (even if has more items)',
    build: build,
    act: (bloc) => bloc.find(
      searchFn: (item) => item.a == item.b,
      items: items2,
      hasMoreItems: true,
    ),
    expect: () => const <FindItemPaginationState>[
      FindItemPaginationState.searching(),
      FindItemPaginationState.found(4),
    ],
  );

  blocTest(
    'emits found if the item found (even if has no more items)',
    build: build,
    act: (bloc) => bloc.find(
      searchFn: (item) => item.a == item.b,
      items: items2,
      hasMoreItems: false,
    ),
    expect: () => const <FindItemPaginationState>[
      FindItemPaginationState.searching(),
      FindItemPaginationState.found(4),
    ],
  );
}
