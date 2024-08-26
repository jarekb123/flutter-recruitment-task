import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recruitment_task/utils/scroll_to_item/find_item_pagination_cubit.dart';
import 'package:scrollview_observer/scrollview_observer.dart';

class ScrollToItem<Item> extends StatefulWidget {
  const ScrollToItem({
    super.key,
    required this.child,
    required this.controller,
    required this.searchFn,
    required this.items,
    required this.hasMoreItems,
    required this.onRequestNextPage,
  });

  final Widget child;
  final ScrollController controller;

  final bool Function(Item item) searchFn;
  final List<Item> items;
  final bool hasMoreItems;
  final VoidCallback onRequestNextPage;

  @override
  State<ScrollToItem<Item>> createState() => _ScrollToItemState<Item>();
}

class _ScrollToItemState<Item> extends State<ScrollToItem<Item>> {
  late final _findItemCubit = FindItemPaginationCubit<Item>();
  late final _observerController =
      SliverObserverController(controller: widget.controller);

  @override
  void initState() {
    super.initState();
    _findItemCubit.find(
      searchFn: widget.searchFn,
      items: widget.items,
      hasMoreItems: widget.hasMoreItems,
    );

    _onStateChanged(_findItemCubit.state);
  }

  @override
  void didUpdateWidget(covariant ScrollToItem<Item> oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.items != widget.items) {
      _findItemCubit.find(
        searchFn: widget.searchFn,
        items: widget.items,
        hasMoreItems: widget.hasMoreItems,
      );
    }
  }

  @override
  void dispose() {
    _findItemCubit.close();
    super.dispose();
  }

  void _onStateChanged(FindItemPaginationState state) {
    state.mapOrNull(
      requestNextPage: (_) => widget.onRequestNextPage(),
      found: (value) {
        // TODO: investigate it cannot be called in the same frame
        //
        // (probably because the state is changed immediately
        // after the find method is called in initState)
        Future.microtask(
          () => _observerController.animateTo(
            index: value.itemIndex,
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<FindItemPaginationCubit<Item>, FindItemPaginationState>(
      bloc: _findItemCubit,
      listener: (context, state) => _onStateChanged(state),
      child: SliverViewObserver(
        controller: _observerController,
        child: widget.child,
      ),
    );
  }
}
