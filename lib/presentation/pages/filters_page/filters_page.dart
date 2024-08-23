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
    return BlocProvider(
      create: (context) => FiltersCubit(
        initialFilters: appliedFilters,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Filters'),
        ),
        body: BlocBuilder<FiltersCubit, ProductsFilters>(
          builder: (context, filtersState) => Column(
            children: [
              CheckboxListTile(
                value: filtersState.favoritesOnly,
                onChanged: (_) =>
                    context.read<FiltersCubit>().toggleFavoritesOnly(),
                title: const Text('Favorites only'),
              ),
              CheckboxListTile(
                value: filtersState.availableOnly,
                onChanged: (_) =>
                    context.read<FiltersCubit>().toggleAvailableOnly(),
                title: const Text('Available only'),
              ),
              CheckboxListTile(
                value: filtersState.bestOnly,
                onChanged: (_) => context.read<FiltersCubit>().toggleBestOnly(),
                title: const Text('Best only'),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  context.read<FiltersCubit>().save();
                  Navigator.of(context).pop();
                },
                child: const Text('Zastosuj filtry'),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
