import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/models/get_user_model.dart';
import 'package:my_app/models/user_register_model.dart';
import 'package:my_app/services/network_handler.dart';
import 'package:http/http.dart' as http;

class UserPageController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();

  RxBool isLoading = false.obs;
  List<GetAllUserSingleModel> userList = <GetAllUserSingleModel>[];

  @override
  void onInit() {
    super.onInit();
    getUser();
  }

  // get user data
  Future<void> getUser() async {
    try {
      final response = await http.get(
        Uri.parse(NetworkHandler.getBaseUrl() + "/users"),
        headers: {"Content-Type": "application/json"},
      );
      var data = json.decode(response.body);
      userList
          .addAll((data as List).map((e) => GetAllUserSingleModel.fromJson(e)));
    } catch (e) {
      Get.snackbar("error", "something went wrong");
      throw e;
    }
  }

// add user to the server
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
