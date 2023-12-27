import 'dart:convert';

import 'package:get/get.dart';
import 'package:my_app/models/password_model.dart';
import 'package:my_app/services/network_handler.dart';
import 'package:http/http.dart' as http;

class PasswordController extends GetxController {
  RxBool isLoading = false.obs;
  var passwordList = <PasswordModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    getAllPassword();
  }

  Future<void> getAllPassword() async {
    try {
      final response = await http.get(
        Uri.parse(NetworkHandler.getBaseUrl() +
            "password/getall/658085e5bc0f214b1344585b"),
        headers: {"Content-Type": "application/json"},
      );
      var data = json.decode(response.body);
      print(data);
      passwordList.addAll((data as List).map((e) => PasswordModel.fromJson(e)));
    } catch (e) {
      Get.snackbar("error", "something went wrong");
      throw e;
    }
  }
}
