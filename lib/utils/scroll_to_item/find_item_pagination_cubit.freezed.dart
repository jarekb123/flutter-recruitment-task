// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'find_item_pagination_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FindItemPaginationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() searching,
    required TResult Function(int itemIndex) found,
    required TResult Function() notFound,
    required TResult Function() requestNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? searching,
    TResult? Function(int itemIndex)? found,
    TResult? Function()? notFound,
    TResult? Function()? requestNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? searching,
    TResult Function(int itemIndex)? found,
    TResult Function()? notFound,
    TResult Function()? requestNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(Searching value) searching,
    required TResult Function(Found value) found,
    required TResult Function(NotFound value) notFound,
    required TResult Function(RequestNextPage value) requestNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(Searching value)? searching,
    TResult? Function(Found value)? found,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(RequestNextPage value)? requestNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(Searching value)? searching,
    TResult Function(Found value)? found,
    TResult Function(NotFound value)? notFound,
    TResult Function(RequestNextPage value)? requestNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindItemPaginationStateCopyWith<$Res> {
  factory $FindItemPaginationStateCopyWith(FindItemPaginationState value,
          $Res Function(FindItemPaginationState) then) =
      _$FindItemPaginationStateCopyWithImpl<$Res, FindItemPaginationState>;
}

/// @nodoc
class _$FindItemPaginationStateCopyWithImpl<$Res,
        $Val extends FindItemPaginationState>
    implements $FindItemPaginationStateCopyWith<$Res> {
  _$FindItemPaginationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IdleImplCopyWith<$Res> {
  factory _$$IdleImplCopyWith(
          _$IdleImpl value, $Res Function(_$IdleImpl) then) =
      __$$IdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleImplCopyWithImpl<$Res>
    extends _$FindItemPaginationStateCopyWithImpl<$Res, _$IdleImpl>
    implements _$$IdleImplCopyWith<$Res> {
  __$$IdleImplCopyWithImpl(_$IdleImpl _value, $Res Function(_$IdleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IdleImpl implements Idle {
  const _$IdleImpl();

  @override
  String toString() {
    return 'FindItemPaginationState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() searching,
    required TResult Function(int itemIndex) found,
    required TResult Function() notFound,
    required TResult Function() requestNextPage,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? searching,
    TResult? Function(int itemIndex)? found,
    TResult? Function()? notFound,
    TResult? Function()? requestNextPage,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? searching,
    TResult Function(int itemIndex)? found,
    TResult Function()? notFound,
    TResult Function()? requestNextPage,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(Searching value) searching,
    required TResult Function(Found value) found,
    required TResult Function(NotFound value) notFound,
    required TResult Function(RequestNextPage value) requestNextPage,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(Searching value)? searching,
    TResult? Function(Found value)? found,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(RequestNextPage value)? requestNextPage,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(Searching value)? searching,
    TResult Function(Found value)? found,
    TResult Function(NotFound value)? notFound,
    TResult Function(RequestNextPage value)? requestNextPage,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle implements FindItemPaginationState {
  const factory Idle() = _$IdleImpl;
}

/// @nodoc
abstract class _$$SearchingImplCopyWith<$Res> {
  factory _$$SearchingImplCopyWith(
          _$SearchingImpl value, $Res Function(_$SearchingImpl) then) =
      __$$SearchingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchingImplCopyWithImpl<$Res>
    extends _$FindItemPaginationStateCopyWithImpl<$Res, _$SearchingImpl>
    implements _$$SearchingImplCopyWith<$Res> {
  __$$SearchingImplCopyWithImpl(
      _$SearchingImpl _value, $Res Function(_$SearchingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchingImpl implements Searching {
  const _$SearchingImpl();

  @override
  String toString() {
    return 'FindItemPaginationState.searching()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() searching,
    required TResult Function(int itemIndex) found,
    required TResult Function() notFound,
    required TResult Function() requestNextPage,
  }) {
    return searching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? searching,
    TResult? Function(int itemIndex)? found,
    TResult? Function()? notFound,
    TResult? Function()? requestNextPage,
  }) {
    return searching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? searching,
    TResult Function(int itemIndex)? found,
    TResult Function()? notFound,
    TResult Function()? requestNextPage,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(Searching value) searching,
    required TResult Function(Found value) found,
    required TResult Function(NotFound value) notFound,
    required TResult Function(RequestNextPage value) requestNextPage,
  }) {
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(Searching value)? searching,
    TResult? Function(Found value)? found,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(RequestNextPage value)? requestNextPage,
  }) {
    return searching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(Searching value)? searching,
    TResult Function(Found value)? found,
    TResult Function(NotFound value)? notFound,
    TResult Function(RequestNextPage value)? requestNextPage,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class Searching implements FindItemPaginationState {
  const factory Searching() = _$SearchingImpl;
}

/// @nodoc
abstract class _$$FoundImplCopyWith<$Res> {
  factory _$$FoundImplCopyWith(
          _$FoundImpl value, $Res Function(_$FoundImpl) then) =
      __$$FoundImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int itemIndex});
}

/// @nodoc
class __$$FoundImplCopyWithImpl<$Res>
    extends _$FindItemPaginationStateCopyWithImpl<$Res, _$FoundImpl>
    implements _$$FoundImplCopyWith<$Res> {
  __$$FoundImplCopyWithImpl(
      _$FoundImpl _value, $Res Function(_$FoundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemIndex = null,
  }) {
    return _then(_$FoundImpl(
      null == itemIndex
          ? _value.itemIndex
          : itemIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FoundImpl implements Found {
  const _$FoundImpl(this.itemIndex);

  @override
  final int itemIndex;

  @override
  String toString() {
    return 'FindItemPaginationState.found(itemIndex: $itemIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoundImpl &&
            (identical(other.itemIndex, itemIndex) ||
                other.itemIndex == itemIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FoundImplCopyWith<_$FoundImpl> get copyWith =>
      __$$FoundImplCopyWithImpl<_$FoundImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() searching,
    required TResult Function(int itemIndex) found,
    required TResult Function() notFound,
    required TResult Function() requestNextPage,
  }) {
    return found(itemIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? searching,
    TResult? Function(int itemIndex)? found,
    TResult? Function()? notFound,
    TResult? Function()? requestNextPage,
  }) {
    return found?.call(itemIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? searching,
    TResult Function(int itemIndex)? found,
    TResult Function()? notFound,
    TResult Function()? requestNextPage,
    required TResult orElse(),
  }) {
    if (found != null) {
      return found(itemIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(Searching value) searching,
    required TResult Function(Found value) found,
    required TResult Function(NotFound value) notFound,
    required TResult Function(RequestNextPage value) requestNextPage,
  }) {
    return found(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(Searching value)? searching,
    TResult? Function(Found value)? found,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(RequestNextPage value)? requestNextPage,
  }) {
    return found?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(Searching value)? searching,
    TResult Function(Found value)? found,
    TResult Function(NotFound value)? notFound,
    TResult Function(RequestNextPage value)? requestNextPage,
    required TResult orElse(),
  }) {
    if (found != null) {
      return found(this);
    }
    return orElse();
  }
}

abstract class Found implements FindItemPaginationState {
  const factory Found(final int itemIndex) = _$FoundImpl;

  int get itemIndex;
  @JsonKey(ignore: true)
  _$$FoundImplCopyWith<_$FoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundImplCopyWith<$Res> {
  factory _$$NotFoundImplCopyWith(
          _$NotFoundImpl value, $Res Function(_$NotFoundImpl) then) =
      __$$NotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundImplCopyWithImpl<$Res>
    extends _$FindItemPaginationStateCopyWithImpl<$Res, _$NotFoundImpl>
    implements _$$NotFoundImplCopyWith<$Res> {
  __$$NotFoundImplCopyWithImpl(
      _$NotFoundImpl _value, $Res Function(_$NotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotFoundImpl implements NotFound {
  const _$NotFoundImpl();

  @override
  String toString() {
    return 'FindItemPaginationState.notFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() searching,
    required TResult Function(int itemIndex) found,
    required TResult Function() notFound,
    required TResult Function() requestNextPage,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? searching,
    TResult? Function(int itemIndex)? found,
    TResult? Function()? notFound,
    TResult? Function()? requestNextPage,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? searching,
    TResult Function(int itemIndex)? found,
    TResult Function()? notFound,
    TResult Function()? requestNextPage,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(Searching value) searching,
    required TResult Function(Found value) found,
    required TResult Function(NotFound value) notFound,
    required TResult Function(RequestNextPage value) requestNextPage,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(Searching value)? searching,
    TResult? Function(Found value)? found,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(RequestNextPage value)? requestNextPage,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(Searching value)? searching,
    TResult Function(Found value)? found,
    TResult Function(NotFound value)? notFound,
    TResult Function(RequestNextPage value)? requestNextPage,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound implements FindItemPaginationState {
  const factory NotFound() = _$NotFoundImpl;
}

/// @nodoc
abstract class _$$RequestNextPageImplCopyWith<$Res> {
  factory _$$RequestNextPageImplCopyWith(_$RequestNextPageImpl value,
          $Res Function(_$RequestNextPageImpl) then) =
      __$$RequestNextPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestNextPageImplCopyWithImpl<$Res>
    extends _$FindItemPaginationStateCopyWithImpl<$Res, _$RequestNextPageImpl>
    implements _$$RequestNextPageImplCopyWith<$Res> {
  __$$RequestNextPageImplCopyWithImpl(
      _$RequestNextPageImpl _value, $Res Function(_$RequestNextPageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestNextPageImpl implements RequestNextPage {
  const _$RequestNextPageImpl();

  @override
  String toString() {
    return 'FindItemPaginationState.requestNextPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestNextPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() searching,
    required TResult Function(int itemIndex) found,
    required TResult Function() notFound,
    required TResult Function() requestNextPage,
  }) {
    return requestNextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? searching,
    TResult? Function(int itemIndex)? found,
    TResult? Function()? notFound,
    TResult? Function()? requestNextPage,
  }) {
    return requestNextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? searching,
    TResult Function(int itemIndex)? found,
    TResult Function()? notFound,
    TResult Function()? requestNextPage,
    required TResult orElse(),
  }) {
    if (requestNextPage != null) {
      return requestNextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(Searching value) searching,
    required TResult Function(Found value) found,
    required TResult Function(NotFound value) notFound,
    required TResult Function(RequestNextPage value) requestNextPage,
  }) {
    return requestNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(Searching value)? searching,
    TResult? Function(Found value)? found,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(RequestNextPage value)? requestNextPage,
  }) {
    return requestNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(Searching value)? searching,
    TResult Function(Found value)? found,
    TResult Function(NotFound value)? notFound,
    TResult Function(RequestNextPage value)? requestNextPage,
    required TResult orElse(),
  }) {
    if (requestNextPage != null) {
      return requestNextPage(this);
    }
    return orElse();
  }
}

abstract class RequestNextPage implements FindItemPaginationState {
  const factory RequestNextPage() = _$RequestNextPageImpl;
}
