class GetProductsPage {
  GetProductsPage({
    required this.pageNumber,
    this.searchQuery,
    this.favoritesOnly = false,
    this.availableOnly = false,
    this.bestOnly = false,
  });

  final int pageNumber;

  final String? searchQuery;
  final bool favoritesOnly;
  final bool availableOnly;
  final bool bestOnly;

  GetProductsPage copyWith({
    int? pageNumber,
    String? searchQuery,
    bool? favoritesOnly,
    bool? availableOnly,
    bool? bestOnly,
  }) {
    return GetProductsPage(
      pageNumber: pageNumber ?? this.pageNumber,
      searchQuery: searchQuery ?? this.searchQuery,
      favoritesOnly: favoritesOnly ?? this.favoritesOnly,
      availableOnly: availableOnly ?? this.availableOnly,
      bestOnly: bestOnly ?? this.bestOnly,
    );
  }
}
