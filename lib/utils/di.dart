import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'diinit',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies() => getIt.diinit();

@module
abstract class AppModule {
  @lazySingleton
  Dio get dio => Dio()..interceptors.add(LogInterceptor());

  @Named("baseUrl")
  String provideApiAddress() => "https://api.jikan.moe/v4/";
}
