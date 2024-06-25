import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreanHeight() {
    return Get.height;
  }

  static getScreanWidth() {
    return Get.width;
  }

  static getHeight(double pixels) {
    double x = getScreanHeight() / pixels;
    return getScreanHeight() / x;
  }

}

