// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_products_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetProductsPage {
  int get pageNumber => throw _privateConstructorUsedError;
  String? get searchQuery => throw _privateConstructorUsedError;
  bool get favoritesOnly => throw _privateConstructorUsedError;
  bool get availableOnly => throw _privateConstructorUsedError;
  bool get bestOnly => throw _privateConstructorUsedError;
  double? get minPrice => throw _privateConstructorUsedError;
  double? get maxPrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetProductsPageCopyWith<GetProductsPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProductsPageCopyWith<$Res> {
  factory $GetProductsPageCopyWith(
          GetProductsPage value, $Res Function(GetProductsPage) then) =
      _$GetProductsPageCopyWithImpl<$Res, GetProductsPage>;
  @useResult
  $Res call(
      {int pageNumber,
      String? searchQuery,
      bool favoritesOnly,
      bool availableOnly,
      bool bestOnly,
      double? minPrice,
      double? maxPrice});
}

/// @nodoc
class _$GetProductsPageCopyWithImpl<$Res, $Val extends GetProductsPage>
    implements $GetProductsPageCopyWith<$Res> {
  _$GetProductsPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = null,
    Object? searchQuery = freezed,
    Object? favoritesOnly = null,
    Object? availableOnly = null,
    Object? bestOnly = null,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
  }) {
    return _then(_value.copyWith(
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      favoritesOnly: null == favoritesOnly
          ? _value.favoritesOnly
          : favoritesOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      availableOnly: null == availableOnly
          ? _value.availableOnly
          : availableOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      bestOnly: null == bestOnly
          ? _value.bestOnly
          : bestOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetProductsPageImplCopyWith<$Res>
    implements $GetProductsPageCopyWith<$Res> {
  factory _$$GetProductsPageImplCopyWith(_$GetProductsPageImpl value,
          $Res Function(_$GetProductsPageImpl) then) =
      __$$GetProductsPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int pageNumber,
      String? searchQuery,
      bool favoritesOnly,
      bool availableOnly,
      bool bestOnly,
      double? minPrice,
      double? maxPrice});
}

/// @nodoc
class __$$GetProductsPageImplCopyWithImpl<$Res>
    extends _$GetProductsPageCopyWithImpl<$Res, _$GetProductsPageImpl>
    implements _$$GetProductsPageImplCopyWith<$Res> {
  __$$GetProductsPageImplCopyWithImpl(
      _$GetProductsPageImpl _value, $Res Function(_$GetProductsPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = null,
    Object? searchQuery = freezed,
    Object? favoritesOnly = null,
    Object? availableOnly = null,
    Object? bestOnly = null,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
  }) {
    return _then(_$GetProductsPageImpl(
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      favoritesOnly: null == favoritesOnly
          ? _value.favoritesOnly
          : favoritesOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      availableOnly: null == availableOnly
          ? _value.availableOnly
          : availableOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      bestOnly: null == bestOnly
          ? _value.bestOnly
          : bestOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$GetProductsPageImpl implements _GetProductsPage {
  const _$GetProductsPageImpl(
      {required this.pageNumber,
      this.searchQuery,
      this.favoritesOnly = false,
      this.availableOnly = false,
      this.bestOnly = false,
      this.minPrice,
      this.maxPrice});

  @override
  final int pageNumber;
  @override
  final String? searchQuery;
  @override
  @JsonKey()
  final bool favoritesOnly;
  @override
  @JsonKey()
  final bool availableOnly;
  @override
  @JsonKey()
  final bool bestOnly;
  @override
  final double? minPrice;
  @override
  final double? maxPrice;

  @override
  String toString() {
    return 'GetProductsPage(pageNumber: $pageNumber, searchQuery: $searchQuery, favoritesOnly: $favoritesOnly, availableOnly: $availableOnly, bestOnly: $bestOnly, minPrice: $minPrice, maxPrice: $maxPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductsPageImpl &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.favoritesOnly, favoritesOnly) ||
                other.favoritesOnly == favoritesOnly) &&
            (identical(other.availableOnly, availableOnly) ||
                other.availableOnly == availableOnly) &&
            (identical(other.bestOnly, bestOnly) ||
                other.bestOnly == bestOnly) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageNumber, searchQuery,
      favoritesOnly, availableOnly, bestOnly, minPrice, maxPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsPageImplCopyWith<_$GetProductsPageImpl> get copyWith =>
      __$$GetProductsPageImplCopyWithImpl<_$GetProductsPageImpl>(
          this, _$identity);
}

abstract class _GetProductsPage implements GetProductsPage {
  const factory _GetProductsPage(
      {required final int pageNumber,
      final String? searchQuery,
      final bool favoritesOnly,
      final bool availableOnly,
      final bool bestOnly,
      final double? minPrice,
      final double? maxPrice}) = _$GetProductsPageImpl;

  @override
  int get pageNumber;
  @override
  String? get searchQuery;
  @override
  bool get favoritesOnly;
  @override
  bool get availableOnly;
  @override
  bool get bestOnly;
  @override
  double? get minPrice;
  @override
  double? get maxPrice;
  @override
  @JsonKey(ignore: true)
  _$$GetProductsPageImplCopyWith<_$GetProductsPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
