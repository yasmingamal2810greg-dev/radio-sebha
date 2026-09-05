import 'package:flutter/material.dart';

class SizeCofig {
  static double getWidth ({required BuildContext context}) =>
      MediaQuery.of(context).size.width;

  static double getHight ({required BuildContext context}) =>
      MediaQuery.of(context).size.height;
}

extension SizeUtils on BuildContext{
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}