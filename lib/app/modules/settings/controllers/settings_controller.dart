// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  Rx<bool> darkTheme = Rx<bool>(false);

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void changeTheme() {
    darkTheme.value = !darkTheme.value;
    darkTheme.value == true
        ? Get.changeThemeMode(ThemeMode.dark)
        : Get.changeThemeMode(ThemeMode.light);
    update();
  }

  void changeLanguge() {}
}
