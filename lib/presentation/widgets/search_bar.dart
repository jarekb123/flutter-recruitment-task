import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    this.onSearch,
  });

  final ValueChanged<String>? onSearch;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onSearch,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      textInputAction: TextInputAction.search,
      decoration: const InputDecoration(
        hintText: 'Search...',
        prefixIcon: Icon(Icons.search),
      ),
    );
  }
}
