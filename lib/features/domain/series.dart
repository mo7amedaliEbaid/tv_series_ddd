
import 'package:freezed_annotation/freezed_annotation.dart';

part 'series.freezed.dart';

@freezed
class Series with _$Series {
  const factory Series({
    required String id,
    required String name,
    required String status,
  //  required String url,
    required String image_thumbnail_path,
    required String country,
  }) = _Series;
}

