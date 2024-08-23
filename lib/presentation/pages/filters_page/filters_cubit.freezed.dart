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
mixin _$ProductsFilters {
  bool get favoritesOnly => throw _privateConstructorUsedError;
  bool get availableOnly => throw _privateConstructorUsedError;
  bool get bestOnly => throw _privateConstructorUsedError;
  String? get searchQuery => throw _privateConstructorUsedError;

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
      String? searchQuery});
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
    ) as $Val);
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
      String? searchQuery});
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
    ));
  }
}

/// @nodoc

class _$ProductsFiltersImpl implements _ProductsFilters {
  const _$ProductsFiltersImpl(
      {required this.favoritesOnly,
      required this.availableOnly,
      required this.bestOnly,
      required this.searchQuery});

  @override
  final bool favoritesOnly;
  @override
  final bool availableOnly;
  @override
  final bool bestOnly;
  @override
  final String? searchQuery;

  @override
  String toString() {
    return 'ProductsFilters(favoritesOnly: $favoritesOnly, availableOnly: $availableOnly, bestOnly: $bestOnly, searchQuery: $searchQuery)';
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
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, favoritesOnly, availableOnly, bestOnly, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsFiltersImplCopyWith<_$ProductsFiltersImpl> get copyWith =>
      __$$ProductsFiltersImplCopyWithImpl<_$ProductsFiltersImpl>(
          this, _$identity);
}

abstract class _ProductsFilters implements ProductsFilters {
  const factory _ProductsFilters(
      {required final bool favoritesOnly,
      required final bool availableOnly,
      required final bool bestOnly,
      required final String? searchQuery}) = _$ProductsFiltersImpl;

  @override
  bool get favoritesOnly;
  @override
  bool get availableOnly;
  @override
  bool get bestOnly;
  @override
  String? get searchQuery;
  @override
  @JsonKey(ignore: true)
  _$$ProductsFiltersImplCopyWith<_$ProductsFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
