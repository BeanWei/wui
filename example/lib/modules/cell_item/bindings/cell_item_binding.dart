import 'package:get/get.dart';

import '../controllers/cell_item_controller.dart';

class CellItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CellItemController>(
      () => CellItemController(),
    );
  }
}
