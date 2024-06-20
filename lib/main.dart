import 'package:anime_scheduler/features/schedule_list/provider/schedule_bloc.dart';
import 'package:anime_scheduler/ui_utils/theme.dart';
import 'package:anime_scheduler/utils/di.dart';
import 'package:anime_scheduler/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  configureDependencies();
  runApp(const ScheduleApp());
}

class ScheduleApp extends StatelessWidget {
  const ScheduleApp({super.key});
  //Приложение, использует bloc и go router
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp.router(
      title: 'Anime Scheduler',
      theme: appLightTheme,
      routerConfig: mainRouter,
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider<ScheduleBloc>(create: (_) => getIt<ScheduleBloc>()),
        ],
        child: child ?? const Text("Unexpected Error"),
      ),
    );
  }
}
