import 'package:finstar_test/core/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              child: Text('аннуитетный'),
              onPressed: () => Get.toNamed(AppRoutes.annuity),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              child: Text('дифферинцированный'),
              onPressed: () => Navigator.of(context).pushNamed(AppRoutes.diff),
            ),
          ],
        ),
      ),
    );
  }
}
