import 'package:e_commerce_app/core/dependency_injection/service_locator.dart';
import 'package:e_commerce_app/core/route/app_router.dart';
import 'package:e_commerce_app/features/category/presentations/bloc/category_bloc.dart';
import 'package:e_commerce_app/features/product/presentations/bloc/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DependencyInjection().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ProductBloc(productRepository: getIt())),
        BlocProvider(create: (_) => CategoryBloc(getCategories: getIt())),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
