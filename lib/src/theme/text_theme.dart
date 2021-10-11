import 'package:flutter/material.dart';

abstract class TextSize {
  // 重要信息，如一级标题
  static const double headingLarge = 30.0;
  static const double headingMedium = 26.0;
  static const double headingNormal = 22.0;
  // 辅助信息，如列表内容描述
  static const double captionLarge = 18.0;
  static const double captionalNormal = 16.0;
  // 普通信息，如正文主要内容
  static const double bodyLarge = 14.0;
  static const double bodyNormal = 13.0;
  // 次要信息，如利益点、摘要
  static const double minorLarge = 12.0;
  static const double minorNormal = 10.0;
}

abstract class TextWeight {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight normal = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semibold = FontWeight.w600;
}
