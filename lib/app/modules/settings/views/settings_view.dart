// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingsController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text('settings'.tr),
            elevation: 0,
            centerTitle: true,
          ),
          body: SettingsList(
            sections: [
              SettingsSection(
                title: Text('Common'),
                tiles: <SettingsTile>[
                  SettingsTile.navigation(
                    leading: Icon(Icons.language),
                    title: Text('language'.tr),
                    value: Text('lang'.tr),
                    onPressed: (value) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          content: SizedBox(
                            height: 170,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                    Get.updateLocale(Locale('en'));
                                  },
                                  child: ListTile(
                                    title: Text(
                                      'English',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                    Get.updateLocale(Locale('fr'));
                                  },
                                  child: ListTile(
                                    title: Text(
                                      'Francais',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                    Get.updateLocale(Locale('ar'));
                                  },
                                  child: ListTile(
                                    title: Text(
                                      'العربيّة',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  SettingsTile.switchTile(
                    onToggle: (value) {
                      controller.changeTheme();
                    },
                    initialValue: controller.darkTheme.value,
                    leading: Icon(Icons.format_paint),
                    title: Text('darkTheme'.tr),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
