import 'package:finstar_test/core/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'presentation/home_page.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      getPages: AppRouter.pages,
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
