import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recruitment_task/models/products_page.dart';
import 'package:flutter_recruitment_task/presentation/pages/filters_page/filters_page.dart';
import 'package:flutter_recruitment_task/presentation/pages/home_page/home_cubit.dart';
import 'package:flutter_recruitment_task/presentation/widgets/big_text.dart';
import 'package:flutter_recruitment_task/presentation/widgets/search_bar.dart';
import 'package:scrollview_observer/scrollview_observer.dart';

const _mainPadding = EdgeInsets.all(16.0);

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    this.lookupProductId,
  });

  /// The ID of the product to be scrolled to when the page is opened.
  final String? lookupProductId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(context.read())
        ..getNextPage(lookupProductId: lookupProductId),
      child: Scaffold(
        appBar: AppBar(
          title: const BigText('Products'),
          actions: const [
            _FiltersIcon(),
          ],
        ),
        body: Padding(
          padding: _mainPadding,
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return switch (state) {
                Error() => BigText('Error: ${state.error}'),
                Loading() => const BigText('Loading...'),
                Loaded() => _LoadedWidget(
                    state: state,
                  ),
              };
            },
          ),
        ),
      ),
    );
  }
}

class _FiltersIcon extends StatelessWidget {
  const _FiltersIcon();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.filter_alt),
      onPressed: () {
        final state = context.read<HomeCubit>().state;
        final appliedFilters = switch (state) {
          Loaded() => state.filters,
          _ => null,
        };

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => FiltersPage(
              appliedFilters: appliedFilters,
            ),
          ),
        );
      },
    );
  }
}

class _LoadedWidget extends StatefulWidget {
  const _LoadedWidget({
    required this.state,
    this.lookupProductId,
  });

  final Loaded state;
  final String? lookupProductId;

  @override
  State<_LoadedWidget> createState() => _LoadedWidgetState();
}

class _LoadedWidgetState extends State<_LoadedWidget> {
  late final _scrollController = ScrollController();
  late final _observerController =
      SliverObserverController(controller: _scrollController);

  @override
  void initState() {
    super.initState();
    if (widget.state.initialProductIndex != null) {
      _observerController.initialIndex = widget.state.initialProductIndex!;
    }
  }

  @override
  void didUpdateWidget(covariant _LoadedWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.state.initialProductIndex !=
        oldWidget.state.initialProductIndex) {
      _scrollToLookupProduct();
    }
  }

  void _scrollToLookupProduct() {
    final index = widget.state.initialProductIndex;
    if (index != null) {
      _observerController.animateTo(
        index: index,
        duration: kThemeAnimationDuration,
        curve: Curves.ease,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SliverViewObserver(
      controller: _observerController,
      child: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: SearchField(
              onSearch: (value) => context.read<HomeCubit>().search(value),
            ),
          ),
          _ProductsSliverList(state: widget.state),
          if (widget.state.nextPageIndex != null) const _GetNextPageButton(),
        ],
      ),
    );
  }
}

class _ProductsSliverList extends StatelessWidget {
  const _ProductsSliverList({required this.state});

  final Loaded state;

  @override
  Widget build(BuildContext context) {
    final products = state.products;

    return SliverList.separated(
      itemCount: products.length,
      itemBuilder: (context, index) => _ProductCard(
        products[index],
      ),
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}

class _ProductCard extends StatelessWidget {
  const _ProductCard(this.product);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigText(product.name),
          _Tags(product: product),
        ],
      ),
    );
  }
}

class _Tags extends StatelessWidget {
  const _Tags({
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: product.tags.map(_TagWidget.new).toList(),
    );
  }
}

class _TagWidget extends StatefulWidget {
  const _TagWidget(this.tag);

  final Tag tag;

  @override
  State<_TagWidget> createState() => _TagWidgetState();
}

class _TagWidgetState extends State<_TagWidget> {
  late final _color =
      Colors.primaries[Random().nextInt(Colors.primaries.length)];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Chip(
        color: MaterialStateProperty.all(_color),
        label: Text(widget.tag.label),
      ),
    );
  }
}

class _GetNextPageButton extends StatelessWidget {
  const _GetNextPageButton();

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: TextButton(
        onPressed: context.read<HomeCubit>().getNextPage,
        child: const BigText('Get next page'),
      ),
    );
  }
}
