import 'dart:async';

import 'package:{{app_name.snakeCase()}}/core/models/shop_category.dart';
import 'package:{{app_name.snakeCase()}}/core/models/shop_product.dart';
import 'package:{{app_name.snakeCase()}}/features/auth/cubits/auth_cubit.dart';
import 'package:{{app_name.snakeCase()}}/features/auth/pages/otp_page.dart';
import 'package:{{app_name.snakeCase()}}/features/auth/pages/password_page.dart';
import 'package:{{app_name.snakeCase()}}/features/auth/pages/phone_number_page.dart';
import 'package:{{app_name.snakeCase()}}/features/auth/pages/registration_page.dart';
import 'package:{{app_name.snakeCase()}}/features/home_page.dart';
import 'package:{{app_name.snakeCase()}}/features/shop/pages/category_form_page.dart';
import 'package:{{app_name.snakeCase()}}/features/shop/pages/create_shop_page.dart';
import 'package:{{app_name.snakeCase()}}/features/shop/pages/product_form_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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