import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tv_series_ddd/core/core_features/locale/infrastructure/data_sources/locale_local_data_source.dart';
import 'package:tv_series_ddd/core/infrastructure/error/app_exception.dart';
import 'package:tv_series_ddd/core/infrastructure/local/shared_preferences_facade.dart';

import '../../../../../utils/utils.dart';


class MockSharedPreferencesFacade extends Mock implements SharedPreferencesFacade {}

void main() {
  late MockSharedPreferencesFacade mockSharedPrefs;

  setUp(() {
    mockSharedPrefs = MockSharedPreferencesFacade();
  });

  ProviderContainer setUpSharedPrefsContainer() {
    return setUpContainer(
      overrides: [
        sharedPreferencesFacadeProvider.overrideWithValue(mockSharedPrefs),
      ],
    );
  }

  group(
    'getAppLocale',
    () {
      const tLocale = 'en';

      test(
        'should return the cached data when it is present',
        () async {
          // GIVEN
          when(
            () => mockSharedPrefs.restoreData<String>(any()),
          ).thenReturn(tLocale);
          final container = setUpSharedPrefsContainer();

          // WHEN
          final localeLocalDataSource = container.read(localeLocalDataSourceProvider);
          final result = localeLocalDataSource.getAppLocale();

          // THEN
          verifyOnly(
            mockSharedPrefs,
            () => mockSharedPrefs.restoreData<String>(LocaleLocalDataSource.appLocaleKey),
          );
          expect(result, equals(tLocale));
        },
      );
      test(
        'should throw a CacheException of type CacheExceptionType.notFound when there is no cached data',
        () async {
          // GIVEN
          when(
            () => mockSharedPrefs.restoreData<String>(any()),
          ).thenReturn(null);
          final container = setUpSharedPrefsContainer();

          // WHEN
          final localeLocalDataSource = container.read(localeLocalDataSourceProvider);

          // THEN
          expect(
            localeLocalDataSource.getAppLocale,
            throwsA(
              isA<CacheException>()
                  .having((e) => e.type, 'type', equals(CacheExceptionType.notFound)),
            ),
          );
        },
      );
    },
  );

  group(
    'cacheAppLocale',
    () {
      const tLocale = 'en';

      test(
        'should call LocalStorageCaller.saveData with the proper params',
        () async {
          // GIVEN
          when(
            () => mockSharedPrefs.saveData(
              key: any(named: 'key'),
              value: any(named: 'value'),
            ),
          ).thenAnswer((_) async => true);
          final container = setUpSharedPrefsContainer();

          // WHEN
          final localeLocalDataSource = container.read(localeLocalDataSourceProvider);
          await localeLocalDataSource.cacheAppLocale(tLocale);

          // THEN
          verifyOnly(
            mockSharedPrefs,
            () => mockSharedPrefs.saveData(
              key: LocaleLocalDataSource.appLocaleKey,
              value: tLocale,
            ),
          );
        },
      );
    },
  );
}
