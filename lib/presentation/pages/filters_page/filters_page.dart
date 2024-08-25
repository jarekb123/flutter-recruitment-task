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
          builder: (context, filtersState) {
            final filtersCubit = context.read<FiltersCubit>();

            return Column(
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
                ListTile(
                  title: Text('Zakres ceny'),
                  subtitle: RangeSlider(
                    divisions: 100,
                    labels: RangeLabels(
                      filtersState.priceRange?.min.toStringAsFixed(0) ?? '',
                      filtersState.priceRange?.max.toStringAsFixed(0) ?? '',
                    ),
                    values: RangeValues(
                      filtersState.priceRange?.min ?? 0,
                      filtersState.priceRange?.max ?? 100,
                    ),
                    min: 0,
                    max: 100,
                    onChanged: (range) {
                      filtersCubit.setPriceRange(
                        PriceRange(
                          min: range.start,
                          max: range.end,
                        ),
                      );
                    },
                  ),
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
            );
          },
        ),
      ),
    );
  }
}
