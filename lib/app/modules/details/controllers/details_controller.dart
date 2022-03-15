// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class DetailsController extends GetxController {
  late UserDetails params;

  @override
  void onInit() {
    params = Get.arguments;
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
}

class UserDetails {
  String? fullName;
  String? username;
  String? city;
  String? email;
  String? company;
  String? website;
  String? phone;

  UserDetails({
    this.fullName,
    this.username,
    this.city,
    this.email,
    this.company,
    this.website,
    this.phone,
  });
}
