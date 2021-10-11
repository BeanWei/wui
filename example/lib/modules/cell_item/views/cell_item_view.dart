import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wui/wui.dart';

import '../controllers/cell_item_controller.dart';

class CellItemView extends GetView<CellItemController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CellItem 列表项'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CellItem(
                title: '基本用法',
              ),
              CellItem(
                title: '带描述',
                brief: '这是一段描述', // TODO: 修复长文本
              ),
              CellItem(
                title: '带文案',
                brief: '这是一段描述',
                addon: 'xxxxx',
              ),
              CellItem(
                title: '带左侧图标',
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
              CellItem(
                title: '隐藏箭头',
                hasArrow: false,
              ),
              CellItem(
                title: '隐藏箭头带文案',
                addon: 'xxxx',
                hasArrow: false,
              ),
              CellItem(
                title: '隐藏底部边框',
                hasBorder: false,
              ),
              Container(
                height: 16.0,
                color: Color(0xFFeeeeee),
              ),
              CellButton(
                text: '退出',
                textColor: Colors.redAccent,
              ),
              Container(
                height: 16.0,
                color: Color(0xFFeeeeee),
              ),
              CellButton(
                text: '删除',
                textColor: Colors.redAccent,
              ),
              Container(
                height: 16.0,
                color: Color(0xFFeeeeee),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
