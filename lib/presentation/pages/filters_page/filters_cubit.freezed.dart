// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filters_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PriceRange {
  double get min => throw _privateConstructorUsedError;
  double get max => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PriceRangeCopyWith<PriceRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceRangeCopyWith<$Res> {
  factory $PriceRangeCopyWith(
          PriceRange value, $Res Function(PriceRange) then) =
      _$PriceRangeCopyWithImpl<$Res, PriceRange>;
  @useResult
  $Res call({double min, double max});
}

/// @nodoc
class _$PriceRangeCopyWithImpl<$Res, $Val extends PriceRange>
    implements $PriceRangeCopyWith<$Res> {
  _$PriceRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
  }) {
    return _then(_value.copyWith(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriceRangeImplCopyWith<$Res>
    implements $PriceRangeCopyWith<$Res> {
  factory _$$PriceRangeImplCopyWith(
          _$PriceRangeImpl value, $Res Function(_$PriceRangeImpl) then) =
      __$$PriceRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double min, double max});
}

/// @nodoc
class __$$PriceRangeImplCopyWithImpl<$Res>
    extends _$PriceRangeCopyWithImpl<$Res, _$PriceRangeImpl>
    implements _$$PriceRangeImplCopyWith<$Res> {
  __$$PriceRangeImplCopyWithImpl(
      _$PriceRangeImpl _value, $Res Function(_$PriceRangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
  }) {
    return _then(_$PriceRangeImpl(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$PriceRangeImpl implements _PriceRange {
  const _$PriceRangeImpl({required this.min, required this.max});

  @override
  final double min;
  @override
  final double max;

  @override
  String toString() {
    return 'PriceRange(min: $min, max: $max)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceRangeImpl &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max));
  }

  @override
  int get hashCode => Object.hash(runtimeType, min, max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceRangeImplCopyWith<_$PriceRangeImpl> get copyWith =>
      __$$PriceRangeImplCopyWithImpl<_$PriceRangeImpl>(this, _$identity);
}

abstract class _PriceRange implements PriceRange {
  const factory _PriceRange(
      {required final double min,
      required final double max}) = _$PriceRangeImpl;

  @override
  double get min;
  @override
  double get max;
  @override
  @JsonKey(ignore: true)
  _$$PriceRangeImplCopyWith<_$PriceRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductsFilters {
  bool get favoritesOnly => throw _privateConstructorUsedError;
  bool get availableOnly => throw _privateConstructorUsedError;
  bool get bestOnly => throw _privateConstructorUsedError;
  String? get searchQuery => throw _privateConstructorUsedError;
  PriceRange? get priceRange => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsFiltersCopyWith<ProductsFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsFiltersCopyWith<$Res> {
  factory $ProductsFiltersCopyWith(
          ProductsFilters value, $Res Function(ProductsFilters) then) =
      _$ProductsFiltersCopyWithImpl<$Res, ProductsFilters>;
  @useResult
  $Res call(
      {bool favoritesOnly,
      bool availableOnly,
      bool bestOnly,
      String? searchQuery,
      PriceRange? priceRange});

  $PriceRangeCopyWith<$Res>? get priceRange;
}

/// @nodoc
class _$ProductsFiltersCopyWithImpl<$Res, $Val extends ProductsFilters>
    implements $ProductsFiltersCopyWith<$Res> {
  _$ProductsFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoritesOnly = null,
    Object? availableOnly = null,
    Object? bestOnly = null,
    Object? searchQuery = freezed,
    Object? priceRange = freezed,
  }) {
    return _then(_value.copyWith(
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
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      priceRange: freezed == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as PriceRange?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceRangeCopyWith<$Res>? get priceRange {
    if (_value.priceRange == null) {
      return null;
    }

    return $PriceRangeCopyWith<$Res>(_value.priceRange!, (value) {
      return _then(_value.copyWith(priceRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductsFiltersImplCopyWith<$Res>
    implements $ProductsFiltersCopyWith<$Res> {
  factory _$$ProductsFiltersImplCopyWith(_$ProductsFiltersImpl value,
          $Res Function(_$ProductsFiltersImpl) then) =
      __$$ProductsFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool favoritesOnly,
      bool availableOnly,
      bool bestOnly,
      String? searchQuery,
      PriceRange? priceRange});

  @override
  $PriceRangeCopyWith<$Res>? get priceRange;
}

/// @nodoc
class __$$ProductsFiltersImplCopyWithImpl<$Res>
    extends _$ProductsFiltersCopyWithImpl<$Res, _$ProductsFiltersImpl>
    implements _$$ProductsFiltersImplCopyWith<$Res> {
  __$$ProductsFiltersImplCopyWithImpl(
      _$ProductsFiltersImpl _value, $Res Function(_$ProductsFiltersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoritesOnly = null,
    Object? availableOnly = null,
    Object? bestOnly = null,
    Object? searchQuery = freezed,
    Object? priceRange = freezed,
  }) {
    return _then(_$ProductsFiltersImpl(
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
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      priceRange: freezed == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as PriceRange?,
    ));
  }
}

/// @nodoc

class _$ProductsFiltersImpl implements _ProductsFilters {
  const _$ProductsFiltersImpl(
      {this.favoritesOnly = false,
      this.availableOnly = false,
      this.bestOnly = false,
      this.searchQuery,
      this.priceRange});

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
  final String? searchQuery;
  @override
  final PriceRange? priceRange;

  @override
  String toString() {
    return 'ProductsFilters(favoritesOnly: $favoritesOnly, availableOnly: $availableOnly, bestOnly: $bestOnly, searchQuery: $searchQuery, priceRange: $priceRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsFiltersImpl &&
            (identical(other.favoritesOnly, favoritesOnly) ||
                other.favoritesOnly == favoritesOnly) &&
            (identical(other.availableOnly, availableOnly) ||
                other.availableOnly == availableOnly) &&
            (identical(other.bestOnly, bestOnly) ||
                other.bestOnly == bestOnly) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.priceRange, priceRange) ||
                other.priceRange == priceRange));
  }

  @override
  int get hashCode => Object.hash(runtimeType, favoritesOnly, availableOnly,
      bestOnly, searchQuery, priceRange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsFiltersImplCopyWith<_$ProductsFiltersImpl> get copyWith =>
      __$$ProductsFiltersImplCopyWithImpl<_$ProductsFiltersImpl>(
          this, _$identity);
}

abstract class _ProductsFilters implements ProductsFilters {
  const factory _ProductsFilters(
      {final bool favoritesOnly,
      final bool availableOnly,
      final bool bestOnly,
      final String? searchQuery,
      final PriceRange? priceRange}) = _$ProductsFiltersImpl;

  @override
  bool get favoritesOnly;
  @override
  bool get availableOnly;
  @override
  bool get bestOnly;
  @override
  String? get searchQuery;
  @override
  PriceRange? get priceRange;
  @override
  @JsonKey(ignore: true)
  _$$ProductsFiltersImplCopyWith<_$ProductsFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
