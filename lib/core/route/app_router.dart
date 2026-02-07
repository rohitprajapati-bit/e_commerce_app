import 'package:e_commerce_app/core/route/route_name.dart';
import 'package:e_commerce_app/features/product/presentations/ui/pages/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/category/presentations/ui/product_by_category.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  AppRouter._();
  static GoRouter router = GoRouter(
    initialLocation: RouteName.home,
    navigatorKey: navigatorKey,
    routes: [
      GoRoute(
        path: RouteName.home,
        name: '/',
        pageBuilder: (context, state) =>
            MaterialPage(key: state.pageKey, child: const HomeScreen()),
      ),

      GoRoute(
        path: RouteName.productCategory,
        name: '/product_category',
        pageBuilder: (context, state) {
          final category = state.extra as dynamic;
          return MaterialPage(
            key: state.pageKey,
            child: ProductByCategory(category: category),
          );
        },
      ),
    ],
  );
}
