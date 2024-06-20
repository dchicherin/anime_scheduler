import 'package:anime_scheduler/features/schedule_list/model/schedule_item.dart';
import 'package:go_router/go_router.dart';

import '../features/detail_page/widgets/detail_page_wrapper.dart';
import '../features/main_page/widgets/tab_page.dart';

final GoRouter mainRouter = GoRouter(routes: <RouteBase>[
  GoRoute(
      path: '/',
      builder: (_, state) {
        return const TabPage();
      },
      routes: [
        GoRoute(
            path: 'details',
            builder: (_, state) {
              ScheduleItem scheduleItem = state.extra as ScheduleItem;
              return DetailPageWrapper(
                scheduleItem: scheduleItem,
              );
            })
      ])
]);
