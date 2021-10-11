import 'package:flutter/material.dart';
import 'package:wui/src/theme/widget_style.dart';

class CellItem extends StatelessWidget {
  const CellItem({
    Key? key,
    this.title,
    this.brief,
    this.addon,
    this.icon,
    this.center = false,
    this.disabled = false,
    this.hasArrow = true,
    this.hasBorder = true,
    this.onTap,
  }) : super(key: key);

  // 标题
  final String? title;

  // 标题下方描述文案
  final String? brief;

  // 右侧附加文案
  final String? addon;

  // 左侧图标
  final Icon? icon;

  // 是否使内容垂直居中
  final bool center;

  // 是否禁用项目
  final bool disabled;

  // 动作箭头标识
  final bool hasArrow;

  // 底部边框
  final bool hasBorder;

  // 点击单元格触发事件
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final List<Widget> leftItems = [];
    if (icon != null) {
      leftItems.add(Icon(
        icon!.icon,
        color: icon!.color,
        semanticLabel: icon!.semanticLabel,
        textDirection: icon!.textDirection,
        size: WidgetStyle.cellTitleFontSize,
      ));
      leftItems.add(const SizedBox(
        width: WidgetStyle.cellLinePaddingLeft,
      ));
    }
    if (title != null) {
      leftItems.add(Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(fontSize: WidgetStyle.cellTitleFontSize),
          ),
          brief != null
              ? const SizedBox(
                  height: 4.0,
                )
              : const SizedBox.shrink(),
          brief != null
              ? Text(
                  brief!,
                  overflow: TextOverflow.fade,
                  softWrap: false,
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      ?.copyWith(fontSize: WidgetStyle.cellBriefFontSize),
                )
              : const SizedBox.shrink(),
        ],
      ));
    }

    final List<Widget> rightItems = [];
    if (addon != null) {
      rightItems.add(Text(
        addon!,
        style: Theme.of(context)
            .textTheme
            .caption
            ?.copyWith(fontSize: WidgetStyle.cellAddonFontSize),
      ));
      if (hasArrow) {
        rightItems.add(
          const SizedBox(width: WidgetStyle.cellLinePaddingLeft / 2),
        );
      }
    }
    if (hasArrow) {
      rightItems.add(
        Icon(
          Icons.arrow_forward_ios,
          size: WidgetStyle.cellAddonFontSize,
          color: Theme.of(context).textTheme.caption!.color,
        ),
      );
    }
    if (addon != null || hasArrow) {
      rightItems.add(
        const SizedBox(
          width: WidgetStyle.cellPaddingH,
        ),
      );
    }

    final Widget cell = Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: WidgetStyle.cellPaddingH),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: leftItems,
            ),
          ),
          Row(
            children: rightItems,
          ),
        ],
      ),
    );

    return InkWell(
      onTap: onTap,
      child: cell,
    );
  }
}
