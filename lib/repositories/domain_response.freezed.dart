// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'domain_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DomainResponseTearOff {
  const _$DomainResponseTearOff();

  DataResponse<D> success<D>(D data) {
    return DataResponse<D>(
      data,
    );
  }

  FailureResponse<D> failure<D>(String failure) {
    return FailureResponse<D>(
      failure,
    );
  }
}

/// @nodoc
const $DomainResponse = _$DomainResponseTearOff();

/// @nodoc
mixin _$DomainResponse<D> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(D data) success,
    required TResult Function(String failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(D data)? success,
    TResult Function(String failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataResponse<D> value) success,
    required TResult Function(FailureResponse<D> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataResponse<D> value)? success,
    TResult Function(FailureResponse<D> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DomainResponseCopyWith<D, $Res> {
  factory $DomainResponseCopyWith(
          DomainResponse<D> value, $Res Function(DomainResponse<D>) then) =
      _$DomainResponseCopyWithImpl<D, $Res>;
}

/// @nodoc
class _$DomainResponseCopyWithImpl<D, $Res>
    implements $DomainResponseCopyWith<D, $Res> {
  _$DomainResponseCopyWithImpl(this._value, this._then);

  final DomainResponse<D> _value;
  // ignore: unused_field
  final $Res Function(DomainResponse<D>) _then;
}

/// @nodoc
abstract class $DataResponseCopyWith<D, $Res> {
  factory $DataResponseCopyWith(
          DataResponse<D> value, $Res Function(DataResponse<D>) then) =
      _$DataResponseCopyWithImpl<D, $Res>;
  $Res call({D data});
}

/// @nodoc
class _$DataResponseCopyWithImpl<D, $Res>
    extends _$DomainResponseCopyWithImpl<D, $Res>
    implements $DataResponseCopyWith<D, $Res> {
  _$DataResponseCopyWithImpl(
      DataResponse<D> _value, $Res Function(DataResponse<D>) _then)
      : super(_value, (v) => _then(v as DataResponse<D>));

  @override
  DataResponse<D> get _value => super._value as DataResponse<D>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(DataResponse<D>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as D,
    ));
  }
}

/// @nodoc

class _$DataResponse<D> implements DataResponse<D> {
  const _$DataResponse(this.data);

  @override
  final D data;

  @override
  String toString() {
    return 'DomainResponse<$D>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataResponse<D> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $DataResponseCopyWith<D, DataResponse<D>> get copyWith =>
      _$DataResponseCopyWithImpl<D, DataResponse<D>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(D data) success,
    required TResult Function(String failure) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(D data)? success,
    TResult Function(String failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataResponse<D> value) success,
    required TResult Function(FailureResponse<D> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataResponse<D> value)? success,
    TResult Function(FailureResponse<D> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class DataResponse<D> implements DomainResponse<D> {
  const factory DataResponse(D data) = _$DataResponse<D>;

  D get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataResponseCopyWith<D, DataResponse<D>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureResponseCopyWith<D, $Res> {
  factory $FailureResponseCopyWith(
          FailureResponse<D> value, $Res Function(FailureResponse<D>) then) =
      _$FailureResponseCopyWithImpl<D, $Res>;
  $Res call({String failure});
}

/// @nodoc
class _$FailureResponseCopyWithImpl<D, $Res>
    extends _$DomainResponseCopyWithImpl<D, $Res>
    implements $FailureResponseCopyWith<D, $Res> {
  _$FailureResponseCopyWithImpl(
      FailureResponse<D> _value, $Res Function(FailureResponse<D>) _then)
      : super(_value, (v) => _then(v as FailureResponse<D>));

  @override
  FailureResponse<D> get _value => super._value as FailureResponse<D>;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(FailureResponse<D>(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureResponse<D> implements FailureResponse<D> {
  const _$FailureResponse(this.failure);

  @override
  final String failure;

  @override
  String toString() {
    return 'DomainResponse<$D>.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FailureResponse<D> &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $FailureResponseCopyWith<D, FailureResponse<D>> get copyWith =>
      _$FailureResponseCopyWithImpl<D, FailureResponse<D>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(D data) success,
    required TResult Function(String failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(D data)? success,
    TResult Function(String failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataResponse<D> value) success,
    required TResult Function(FailureResponse<D> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataResponse<D> value)? success,
    TResult Function(FailureResponse<D> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FailureResponse<D> implements DomainResponse<D> {
  const factory FailureResponse(String failure) = _$FailureResponse<D>;

  String get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FailureResponseCopyWith<D, FailureResponse<D>> get copyWith =>
      throw _privateConstructorUsedError;
}
