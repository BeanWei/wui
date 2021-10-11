import 'package:flutter/material.dart';

abstract class ColorTheme {
  // 全局主题
  // 品牌色
  static const Color primary = Color(0xFF198CFF);
  static const Color primaryDark = Color(0xFF198CFF);

  /// 文字
  // 重要信息，如一级标题
  static const Color textBase = Color(0xFF01080F);
  static const Color textBaseDark = Color(0xFF01080F);
  // 普通信息，如正文主要内容
  static const Color textBody = Color(0xFF41485D);
  static const Color textBodyDark = Color(0xFF41485D);
  // 次要信息，如利益点、摘要
  static const Color textMinor = Color(0xFF666F83);
  static const Color textMinorDark = Color(0xFF666F83);
  // 辅助信息，如列表内容描述
  static const Color textCaption = Color(0xFF858B9C);
  static const Color textCaptionDark = Color(0xFF858B9C);
  // 禁用状态
  static const Color textDisabled = Color(0xFFD9E0E7);
  static const Color textDisabledDark = Color(0xFFD9E0E7);
  // 默认提示输入或占位
  static const Color textPlaceholder = Color(0xFFC5CAD5);
  static const Color textPlaceholderDark = Color(0xFFC5CAD5);
  // 高亮状态
  static const Color textHighlight = Color(0xFF198CFF);
  static const Color textHighlightDark = Color(0xFF198CFF);
  // 利益点，警告提示
  static const Color textWarn = Color(0xFFFF4040);
  static const Color textWarnDark = Color(0xFFFF4040);
  // 强提示报错
  static const Color textError = Color(0xFFFF4040);
  static const Color textErrorDark = Color(0xFFFF4040);
  // 文字链接
  static const Color textLink = Color(0xFF5878B4);
  static const Color textLinkDark = Color(0xFF5878B4);

  /// 边框
  // 条目边框
  static const Color borderBase = Color(0xFFE2E4EA);
  static const Color borderBaseDark = Color(0xFFE2E4EA);
  // 元素边框，如按钮
  static const Color borderElement = Color(0xFFC5CAD5);
  static const Color borderElementDark = Color(0xFFC5CAD5);

  /// 背景
  // 元素，容器背景
  static const Color bgBase = Color(0xFFF2F2F7);
  static const Color bgBaseDark = Color(0xFFF2F2F7);
  // 禁用元素背景
  static const Color bgDisabled = Color(0xFFE2E4EA);
  static const Color bgDisabledDark = Color(0xFFE2E4EA);
  // 条目点击态
  static const Color bgTap = Color(0xFFF2F2F7);
  static const Color bgTapDark = Color(0xFFF2F2F7);
}
