import 'package:e_commerce_app/core/route/route_name.dart';
import 'package:e_commerce_app/features/e_commerce/presentations/ui/pages/home/home_screen.dart';
import 'package:go_router/go_router.dart';
import '../../features/e_commerce/presentations/ui/pages/product_by_category/product_by_category.dart';

class AppRouter {
  AppRouter._();
  static GoRouter router = GoRouter(
    initialLocation: RouteName.home,
    routes: [
      GoRoute(
        path: RouteName.home,
        name: '/',
        builder: (context, state) => const HomeScreen(),
      ),

      GoRoute(
        path: RouteName.productCategory,
        name: '/product_category',
        builder: (context, state) {
          final category = state.extra as dynamic;
          return ProductByCategory(category: category);
        },
      ),
    ],
  );
}
