import 'package:flutter/material.dart';
import 'package:wui/src/theme/widget_style.dart';

class CellButton extends StatelessWidget {
  const CellButton({
    Key? key,
    required this.text,
    this.textColor,
    this.hasBorder = false,
    this.onTap,
  }) : super(key: key);

  // 按钮文字
  final String text;

  // 按钮文字颜色
  final Color? textColor;

  // 底部边框
  final bool hasBorder;

  // 点击单元格触发事件
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: WidgetStyle.cellPaddingV),
        constraints: const BoxConstraints(
          minHeight: WidgetStyle.cellMinHeight,
        ),
        decoration: hasBorder
            ? BoxDecoration(
                color: Theme.of(context).appBarTheme.backgroundColor,
                border: Border(
                  bottom: Divider.createBorderSide(context, width: 0.6),
                ),
              )
            : BoxDecoration(
                color: Theme.of(context).appBarTheme.backgroundColor,
              ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  fontSize: WidgetStyle.cellTitleFontSize,
                  color: textColor,
                ),
          ),
        ),
      ),
    );
  }
}
