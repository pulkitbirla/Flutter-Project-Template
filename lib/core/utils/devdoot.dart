import 'package:flutter/material.dart';

class Utils {
  static void flushBarMessage(
    IconData icon,
    Color? snackColor,
    String message,
    BuildContext context,
  ) {
    final snackBar = SnackBar(
      content: Row(
        children: [
          Icon(icon, size: 28, color: Colors.white),
          SizedBox(width: 10),
          Expanded(child: Text(message)),
        ],
      ),
      backgroundColor: snackColor ?? Colors.red,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      duration: Duration(seconds: 3),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}