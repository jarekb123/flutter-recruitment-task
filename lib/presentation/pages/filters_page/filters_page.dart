import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recruitment_task/presentation/pages/filters_page/filters_cubit.dart';

class FiltersPage extends StatelessWidget {
  const FiltersPage({
    super.key,
    required this.appliedFilters,
  });

  final ProductsFilters? appliedFilters;

  @override
  Widget build(BuildContext context) {
    final filtersCubit = context.watch<FiltersCubit>();
    final filtersState = filtersCubit.state;

    return BlocProvider(
      create: (context) => FiltersCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Filters'),
        ),
        body: Column(
          children: [
            CheckboxListTile(
              value: filtersState.favoritesOnly,
              onChanged: (_) => filtersCubit.toggleFavoritesOnly(),
              title: const Text('Favorites only'),
            ),
            CheckboxListTile(
              value: filtersState.availableOnly,
              onChanged: (_) => filtersCubit.toggleAvailableOnly(),
              title: const Text('Available only'),
            ),
            CheckboxListTile(
              value: filtersState.bestOnly,
              onChanged: (_) => filtersCubit.toggleBestOnly(),
              title: const Text('Best only'),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                filtersCubit.save();
                Navigator.of(context).pop();
              },
              child: const Text('Zastosuj filtry'),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
