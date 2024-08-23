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
      bool bestOnly});
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
      bool bestOnly});
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
      this.bestOnly = false});

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
  String toString() {
    return 'GetProductsPage(pageNumber: $pageNumber, searchQuery: $searchQuery, favoritesOnly: $favoritesOnly, availableOnly: $availableOnly, bestOnly: $bestOnly)';
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
                other.bestOnly == bestOnly));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageNumber, searchQuery,
      favoritesOnly, availableOnly, bestOnly);

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
      final bool bestOnly}) = _$GetProductsPageImpl;

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
  @JsonKey(ignore: true)
  _$$GetProductsPageImplCopyWith<_$GetProductsPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
