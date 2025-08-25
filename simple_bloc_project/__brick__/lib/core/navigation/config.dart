import 'package:{{project_name.snakeCase()}}/core/navigation/app_routes.dart';
import 'package:go_router/go_router.dart';

final appRouterConfig = GoRouter(
  initialLocation: const InitialRoute().location,
  routes: $appRoutes,
);
