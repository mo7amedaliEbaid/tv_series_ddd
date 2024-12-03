import 'package:fast_immutable_collections/fast_immutable_collections.dart';
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
      _$SeriesDtoDtoFromJson(json);

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
/*

@Freezed(toJson: false)
class ArticlesDto with _$ArticlesDto {
  const factory ArticlesDto({
    required IList<ArticleDto> articles,
  }) = _ArticlesDto;

  const ArticlesDto._();

  factory ArticlesDto.fromJson(Map<String, dynamic> json) => _$ArticlesDtoFromJson(json);

  SeriesDto toDomain() {
    return Articles(items: articles.map((e) => e.toDomain()).toIList());
  }
}
*/
