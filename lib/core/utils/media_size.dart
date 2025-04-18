import 'package:flutter/material.dart';

class MediaSize {
  static bool isCompact(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    if (size.width <= 850) {
      return true;
    } else {
      return false;
    }
  }

  static bool isMedium(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    if ((size.width > 850) && (size.width <= 1100)) {
      return true;
    } else {
      return false;
    }
  }

  static bool isExpanded(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    if (size.width > 1100) {
      return true;
    } else {
      return false;
    }
  }
}