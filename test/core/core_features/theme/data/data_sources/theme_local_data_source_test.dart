import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tv_series_ddd/core/core_features/theme/infrastructure/data_sources/theme_local_data_source.dart';
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
    'getAppThemeMode',
    () {
      const tTheme = 'light';

      test(
        'should return the cached data when it is present',
        () async {
          // GIVEN
          when(
            () => mockSharedPrefs.restoreData<String>(any()),
          ).thenReturn(tTheme);
          final container = setUpSharedPrefsContainer();

          // WHEN
          final themeLocalDataSource = container.read(themeLocalDataSourceProvider);
          final result = themeLocalDataSource.getAppThemeMode();

          // THEN
          verifyOnly(
            mockSharedPrefs,
            () => mockSharedPrefs.restoreData<String>(ThemeLocalDataSource.appThemeKey),
          );
          expect(result, equals(tTheme));
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
          final themeLocalDataSource = container.read(themeLocalDataSourceProvider);

          // THEN
          expect(
            themeLocalDataSource.getAppThemeMode,
            throwsA(
              isA<CacheException>().having(
                (e) => e.type,
                'type',
                equals(CacheExceptionType.notFound),
              ),
            ),
          );
        },
      );
    },
  );

  group(
    'cacheAppThemeMode',
    () {
      const tTheme = 'light';

      test(
        'should call LocalStorageCaller.saveData with the proper params',
        () async {
          // GIVEN
          final container = setUpSharedPrefsContainer();
          when(
            () => mockSharedPrefs.saveData(
              key: any(named: 'key'),
              value: any(named: 'value'),
            ),
          ).thenAnswer((_) async => true);

          // WHEN
          final themeLocalDataSource = container.read(themeLocalDataSourceProvider);
          await themeLocalDataSource.cacheAppThemeMode(tTheme);

          // THEN
          verifyOnly(
            mockSharedPrefs,
            () => mockSharedPrefs.saveData(
              key: ThemeLocalDataSource.appThemeKey,
              value: tTheme,
            ),
          );
        },
      );
    },
  );
}
