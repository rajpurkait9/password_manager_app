import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/models/user_register_model.dart';
import 'package:my_app/services/network_handler.dart';

class UserPageController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();

  void addUser() async {
    UserRegisterModel userRegisterModel = UserRegisterModel(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        mobileNumber: mobileNumberController.text);

    var response = await NetworkHandler.post(
        userRegisterModelToJson(userRegisterModel), "/user/register");
    if (response == "error") {
      Get.snackbar("Error", response);
    } else {
      var data = json.decode(response);
      Get.snackbar("Success", "User added successfully");
    }
  }
}
