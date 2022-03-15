// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:gdg_flutter_app/app/modules/details/controllers/details_controller.dart';
import 'package:gdg_flutter_app/app/modules/home/user_model.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../controllers/home_controller.dart';
import 'package:gdg_flutter_app/app/routes/app_pages.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text('appName'.tr),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {
                  Get.toNamed(Routes.SETTINGS);
                },
                icon: Icon(Icons.settings),
              )
            ],
            elevation: 0,
          ),
          body: controller.loading.value
              ? Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '...Fetching Data...',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Please Wait!',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                )
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Text(
                                'welcome'.tr,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 3),
                              Text(
                                'click'.tr,
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller.users.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Get.toNamed(
                                Routes.DETAILS,
                                arguments: UserDetails(
                                  fullName: controller.users[index].name,
                                  username: controller.users[index].username,
                                  email: controller.users[index].email,
                                  phone: controller.users[index].phone,
                                  website: controller.users[index].website,
                                  city: controller.users[index].address.city,
                                  company: controller.users[index].company.name,
                                ),
                              );
                            },
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Image.asset('assets/userImage.png'),
                              ),
                              title: Text(controller.users[index].name),
                              subtitle: Text(controller.users[index].username),
                              trailing: Icon(Icons.arrow_forward),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
        );
      },
    );
  }
}
