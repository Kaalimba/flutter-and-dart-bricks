import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'app_routes.g.dart';

@TypedGoRoute<InitialRoute>(path: '/')
class InitialRoute extends GoRouteData with _$InitialRoute {
  const InitialRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Scaffold();
  }
}
