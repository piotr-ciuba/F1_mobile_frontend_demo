import 'package:flutter/material.dart';

mixin AppTextStyles {
  static TextStyle body1 = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 16,
    letterSpacing: 0.0,
  );

  static TextStyle body2 = body1.copyWith(
    fontSize: 14,
  );

  static TextStyle subtitle1 = body1.copyWith(
    fontSize: 16,
    letterSpacing: 0.15,
  );

  static TextStyle subtitle2 = body1.copyWith(
    fontSize: 14,
    letterSpacing: 0.1,
  );

  static TextStyle button1 = body1.copyWith(
    fontSize: 14,
    letterSpacing: 0.25,
    fontWeight: FontWeight.w600,
  );

  static TextStyle button2 = body1.copyWith(
    fontSize: 12,
    letterSpacing: 0.25,
  );
}
