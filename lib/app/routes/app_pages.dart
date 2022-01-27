import 'package:get/get.dart';

import 'package:rest_mgt_systm/app/modules/cart_view/bindings/cart_view_binding.dart';
import 'package:rest_mgt_systm/app/modules/cart_view/views/cart_view_view.dart';
import 'package:rest_mgt_systm/app/modules/home/bindings/home_binding.dart';
import 'package:rest_mgt_systm/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CART_VIEW,
      page: () => CartViewView(),
      binding: CartViewBinding(),
    ),
  ];
}
