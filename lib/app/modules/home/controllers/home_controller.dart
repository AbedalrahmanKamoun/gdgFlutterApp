// ignore_for_file: unnecessary_overrides

import 'package:gdg_flutter_app/app/modules/home/providers/user_provider.dart';
import 'package:gdg_flutter_app/app/modules/home/user_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<bool> loading = Rx<bool>(true);
  List users = [];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
    final provider = UserProvider();
    final response = await provider.getAllUsers();
    users = (response.body as List).map((e) => User.fromJson(e)).toList();
    loading.value = false;
    update();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
