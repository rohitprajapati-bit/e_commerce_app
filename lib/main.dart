import 'package:e_commerce_app/core/dependency_injection/dependency_injection.dart';
import 'package:e_commerce_app/core/route/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  DependencyInjection().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: AppRouter.router,
    );
  }
}
