import 'package:get/get.dart';
import '../features/home/views/home_view.dart';
import '../features/home/bindings/home_binding.dart';

class AppPages {
  static const initial = AppRoutes.home;

  static final routes = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}

abstract class AppRoutes {
  static const home = '/home';
  static const login = '/login';
  static const profile = '/profile';
}
