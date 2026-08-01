import 'package:flutter/material.dart';

class Responsive {
  static const double mobileBreakpoint = 700;

  static bool isMobile(BuildContext context) {
    return MediaQuery.sizeOf(context).width < mobileBreakpoint;
  }
}
