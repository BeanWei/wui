import 'package:get/get.dart';

import 'package:example/modules/button/bindings/button_binding.dart';
import 'package:example/modules/button/views/button_view.dart';
import 'package:example/modules/cell_item/bindings/cell_item_binding.dart';
import 'package:example/modules/cell_item/views/cell_item_view.dart';
import 'package:example/modules/home/bindings/home_binding.dart';
import 'package:example/modules/home/views/home_view.dart';

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
      name: _Paths.CELL_ITEM,
      page: () => CellItemView(),
      binding: CellItemBinding(),
    ),
    GetPage(
      name: _Paths.BUTTON,
      page: () => ButtonView(),
      binding: ButtonBinding(),
    ),
  ];
}
