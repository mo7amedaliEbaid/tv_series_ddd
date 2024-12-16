import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/series.dart';

part 'series_dto.freezed.dart';

part 'series_dto.g.dart';

@Freezed(toJson: false)
class SeriesDto with _$SeriesDto {
  const factory SeriesDto({
    required String id,
    required String name,
    required String status,
    required String image_thumbnail_path,
    required String country,
  }) = _SeriesDto;

  const SeriesDto._();

  factory SeriesDto.fromJson(Map<String, dynamic> json) =>
      _$SeriesDtoFromJson(json);

  Series toDomain() {
    return Series(
      id: id ?? '',
      name: name,
      status: status,
      image_thumbnail_path: image_thumbnail_path,
      country: country,
    );
  }
}
