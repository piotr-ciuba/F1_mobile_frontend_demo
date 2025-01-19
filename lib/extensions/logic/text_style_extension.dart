import 'package:flutter/widgets.dart';

extension TextStyleExtension on TextStyle {
  TextStyle get regular => copyWith(fontWeight: FontWeight.normal);
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);

  TextStyle fontColor(Color color) => copyWith(color: color);
}
