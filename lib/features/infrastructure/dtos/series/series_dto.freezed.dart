// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'series_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SeriesDto _$SeriesDtoFromJson(Map<String, dynamic> json) {
  return _SeriesDto.fromJson(json);
}

/// @nodoc
mixin _$SeriesDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get image_thumbnail_path => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeriesDtoCopyWith<SeriesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesDtoCopyWith<$Res> {
  factory $SeriesDtoCopyWith(SeriesDto value, $Res Function(SeriesDto) then) =
      _$SeriesDtoCopyWithImpl<$Res, SeriesDto>;
  @useResult
  $Res call(
      {String id,
      String name,
      String status,
      String image_thumbnail_path,
      String country});
}

/// @nodoc
class _$SeriesDtoCopyWithImpl<$Res, $Val extends SeriesDto>
    implements $SeriesDtoCopyWith<$Res> {
  _$SeriesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? image_thumbnail_path = null,
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      image_thumbnail_path: null == image_thumbnail_path
          ? _value.image_thumbnail_path
          : image_thumbnail_path // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeriesDtoImplCopyWith<$Res>
    implements $SeriesDtoCopyWith<$Res> {
  factory _$$SeriesDtoImplCopyWith(
          _$SeriesDtoImpl value, $Res Function(_$SeriesDtoImpl) then) =
      __$$SeriesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String status,
      String image_thumbnail_path,
      String country});
}

/// @nodoc
class __$$SeriesDtoImplCopyWithImpl<$Res>
    extends _$SeriesDtoCopyWithImpl<$Res, _$SeriesDtoImpl>
    implements _$$SeriesDtoImplCopyWith<$Res> {
  __$$SeriesDtoImplCopyWithImpl(
      _$SeriesDtoImpl _value, $Res Function(_$SeriesDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? image_thumbnail_path = null,
    Object? country = null,
  }) {
    return _then(_$SeriesDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      image_thumbnail_path: null == image_thumbnail_path
          ? _value.image_thumbnail_path
          : image_thumbnail_path // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$SeriesDtoImpl extends _SeriesDto {
  const _$SeriesDtoImpl(
      {required this.id,
      required this.name,
      required this.status,
      required this.image_thumbnail_path,
      required this.country})
      : super._();

  factory _$SeriesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeriesDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String status;
  @override
  final String image_thumbnail_path;
  @override
  final String country;

  @override
  String toString() {
    return 'SeriesDto(id: $id, name: $name, status: $status, image_thumbnail_path: $image_thumbnail_path, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeriesDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.image_thumbnail_path, image_thumbnail_path) ||
                other.image_thumbnail_path == image_thumbnail_path) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, status, image_thumbnail_path, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeriesDtoImplCopyWith<_$SeriesDtoImpl> get copyWith =>
      __$$SeriesDtoImplCopyWithImpl<_$SeriesDtoImpl>(this, _$identity);
}

abstract class _SeriesDto extends SeriesDto {
  const factory _SeriesDto(
      {required final String id,
      required final String name,
      required final String status,
      required final String image_thumbnail_path,
      required final String country}) = _$SeriesDtoImpl;
  const _SeriesDto._() : super._();

  factory _SeriesDto.fromJson(Map<String, dynamic> json) =
      _$SeriesDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get status;
  @override
  String get image_thumbnail_path;
  @override
  String get country;
  @override
  @JsonKey(ignore: true)
  _$$SeriesDtoImplCopyWith<_$SeriesDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
