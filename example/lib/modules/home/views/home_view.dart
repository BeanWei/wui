import 'package:example/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wui/wui.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WUI'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CellItem(
                title: 'Button 按钮',
                onTap: () => Get.toNamed(Routes.BUTTON),
              ),
              CellItem(
                title: 'CellItem 列表项',
                onTap: () => Get.toNamed(Routes.CELL_ITEM),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
