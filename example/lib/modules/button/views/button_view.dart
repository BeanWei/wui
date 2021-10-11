import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wui/wui.dart';

import '../controllers/button_controller.dart';

class ButtonView extends GetView<ButtonController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button 按钮'),
        centerTitle: true,
      ),
      body: Container(
        color: Color(0xFFeeeeee),
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
        child: Column(
          children: [
            Button(
              onPressed: () {},
              text: '提交',
              backgroundColor: Theme.of(context).primaryColor,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
