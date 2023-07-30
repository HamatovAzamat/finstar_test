import 'package:finstar_test/bindings/home_bindind.dart';
import 'package:finstar_test/core/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: HomeBinding(),
      initialRoute: AppRoutes.home,
      getPages: AppRouter.pages,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          color: Colors.purple,
        )
      ),
    );
  }
}
