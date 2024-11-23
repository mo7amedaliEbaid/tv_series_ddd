
import 'package:freezed_annotation/freezed_annotation.dart';

part 'series.freezed.dart';

@freezed
class Series with _$Series {
  const factory Series({
    required String author,
    required String title,
    required String description,
    required String url,
    required String image,
    required DateTime publishDate,
  }) = _Series;
}


