import 'package:finstar_test/presentation/annuity_page.dart';
import 'package:finstar_test/presentation/home_page.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const home = '/home';

  static const diff = '/diff';
  static const annuity = '/annuity';
}

class AppRouter {
  static final pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: AppRoutes.diff,
      page: () => const HomePage(),
    ),
    GetPage(
      name: AppRoutes.annuity,
      page: () => const AnnuityPage(),
    ),
  ];
}
