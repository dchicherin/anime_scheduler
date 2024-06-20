// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/schedule_list/api/schedule_api.dart' as _i4;
import '../features/schedule_list/provider/schedule_bloc.dart' as _i6;
import '../features/schedule_list/repository/schedule_repository.dart' as _i5;
import 'di.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt diinit({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.lazySingleton<_i3.Dio>(() => appModule.dio);
    gh.factory<String>(
      () => appModule.provideApiAddress(),
      instanceName: 'baseUrl',
    );
    gh.factory<_i4.ScheduleApi>(() => _i4.ScheduleApi(
          gh<_i3.Dio>(),
          baseUrl: gh<String>(instanceName: 'baseUrl'),
        ));
    gh.factory<_i5.ScheduleRepository>(
        () => _i5.ScheduleRepository(apiClient: gh<_i4.ScheduleApi>()));
    gh.factory<_i6.ScheduleBloc>(
        () => _i6.ScheduleBloc(repository: gh<_i5.ScheduleRepository>()));
    return this;
  }
}

class _$AppModule extends _i7.AppModule {}
